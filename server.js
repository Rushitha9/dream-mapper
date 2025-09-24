const express = require('express');
const sqlite3 = require('sqlite3');
const { spawn } = require('child_process');
const app = express();

app.use(express.json());

// Database connection
const db = new sqlite3.Database('data.sql');

// API endpoint to save dream data
app.post('/api/dreams', (req, res) => {
    const dream = req.body;
    
    db.run(`INSERT INTO dreams (date, title, description, mood, sleep_duration, frequency, tags) 
            VALUES (?, ?, ?, ?, ?, ?, ?)`,
        [dream.date, dream.title, dream.description, dream.mood, 
         dream.sleep_duration, dream.frequency, dream.tags],
        (err) => {
            if (err) {
                res.status(500).json({ error: err.message });
                return;
            }
            
            // Run ML analysis
            const pythonProcess = spawn('python', ['dream_analyzer.py']);
            pythonProcess.on('close', (code) => {
                res.json({ message: 'Dream saved and analyzed successfully' });
            });
        });
});

app.listen(3000, () => {
    console.log('Server running on port 3000');
});
