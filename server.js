const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const path = require('path');
const helmet = require('helmet');
const morgan = require('morgan');
const rateLimit = require('express-rate-limit');
require('dotenv').config();

const app = express();

// === MIDDLEWARE ===
// Security headers
app.use(helmet());

// Logging
app.use(morgan('combined'));

// CORS configuration (allow frontend origin)
const corsOptions = {
  origin: process.env.CORS_ORIGIN || 'http://localhost:5000',
  credentials: true,
  optionsSuccessStatus: 200
};
app.use(cors(corsOptions));

// Rate limiting for all requests
const limiter = rateLimit({
  windowMs: parseInt(process.env.RATE_LIMIT_WINDOW_MS) || 15 * 60 * 1000, // 15 minutes
  max: parseInt(process.env.RATE_LIMIT_MAX) || 100,
  message: { error: 'Too many requests from this IP, please try again later.' },
  standardHeaders: true,
  legacyHeaders: false,
});
app.use(limiter);

// Body parsing
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true }));

// Serve static files (frontend) from /public
app.use(express.static(path.join(__dirname, 'public')));

// === DATABASE CONNECTION ===
const connectDB = async () => {
  try {
    await mongoose.connect(process.env.MONGODB_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log('✅ MongoDB connected successfully');
  } catch (error) {
    console.error('❌ MongoDB connection error:', error);
    process.exit(1);
  }
};
connectDB();

// === ROUTES ===
// API routes (prefixed with /api)
app.use('/api/auth', require('./routes/auth'));
app.use('/api/dreams', require('./routes/dreams'));
app.use('/api/users', require('./routes/users'));

// Auth check endpoint (for frontend to verify token)
app.get('/api/auth/check', require('./middleware/auth').authenticateToken, (req, res) => {
  res.json({
    success: true,
    user: {
      id: req.user.userId,
      username: req.user.username,
      crewmateColor: req.user.crewmateColor
    }
  });
});

// Health check
app.get('/api/health', (req, res) => {
  res.json({ success: true, message: 'Server is running', timestamp: new Date().toISOString() });
});

// === SERVE FRONTEND ===
// In production, serve frontend for all non-API routes
if (process.env.NODE_ENV === 'production') {
  app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
  });
} else {
  // In development, serve frontend directly
  app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
  });
}

// === ERROR HANDLING ===
app.use((req, res, next) => {
  const error = new Error(`Not Found - ${req.originalUrl}`);
  res.status(404);
  res.json({ success: false, error: error.message });
});

// Global error handler
app.use((error, req, res, next) => {
  console.error('🚨 Server Error:', error);
  res.status(error.status || 500);
  res.json({
    success: false,
    error: process.env.NODE_ENV === 'development' ? error.message : 'Internal Server Error'
  });
});

// === START SERVER ===
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`🚀 Server running on http://localhost:${PORT}`);
  console.log(`📊 Environment: ${process.env.NODE_ENV}`);
  console.log(`🔐 JWT Secret: ${process.env.JWT_SECRET ? 'Set' : 'NOT SET - Please set JWT_SECRET in .env'}`);
});