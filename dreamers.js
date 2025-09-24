const express = require('express');
const Dream = require('../models/Dream');
const { authenticateToken } = require('../middleware/auth');
const { validateDream } = require('../middleware/validation');
const { detectSuspiciousContent } = require('../utils/helpers');

const router = express.Router();

// Create dream (same as detailed)
router.post('/', authenticateToken, validateDream, async (req, res) => {
  try {
    const { title, description, tags = [], mood, date } = req.body;
    const suspicious = detectSuspiciousContent(title, description);

    const newDream = new Dream({
      userId: req.user.userId,
      title,
      description,
      tags,
      mood,
      date: new Date(date),
      suspicious
    });

    await newDream.save();
    await newDream.populate('userId', 'username crewmateColor');

    res.status(201).json({
      success: true,
      message: 'Dream created successfully',
      dream: newDream
    });
  } catch (error) {
    console.error('Create dream error:', error);
    res.status(500).json({ 
      success: false, 
      error: 'Failed to create dream' 
    });
  }
});

// Get dreams (with pagination, search, sort) - same as detailed
router.get('/', authenticateToken, async (req, res) => {
  try {
    const { page = 1, limit = 10, sort = '-createdAt', search } = req.query;
    const query = { userId: req.user.userId };

    if (search) {
      query.$or = [
        { title: { $regex: search, $options: 'i' } },
        { description: { $regex: search, $options: 'i' } },
        { tags: { $in: [new RegExp(search, 'i')] } }
      ];
    }

    const dreams = await Dream.find(query)
      .populate('userId', 'username crewmateColor')
      .sort(sort)
      .limit(parseInt(limit))
      .skip((page - 1) * parseInt(limit));

    const total = await Dream.countDocuments(query);

    res.json({
      success: true,
      dreams,
      pagination: {
        currentPage: parseInt(page),
        totalPages: Math.ceil(total / parseInt(limit)),
        total,
        hasNext: parseInt(page) < Math.ceil(total / parseInt(limit))
      }
    });
  } catch (error) {
    console.error('Get dreams error:', error);
    res.status(500).json({ 
      success: false, 
      error: 'Failed to fetch dreams' 
    });
  }
});

// Get single dream
router.get('/:id', authenticateToken, async (req, res) => {
  try {
    const dream = await Dream.findOne({ 
      _id: req.params.id, 
      userId: req.user.userId 
    }).populate('userId', 'username crewmateColor');
    
    if (!dream) {
      return res.status(404).json({ 
        success: false, 
        error: 'Dream not found' 
      });
    }
    
    res.json({ 
      success: true, 
      dream 
    });
  } catch (error) {
    console.error('Get dream error:', error);
    res.status(500).json({ 
      success: false, 
      error: 'Failed to fetch dream' 
    });
  }
});

// Update dream
router.put('/:id', authenticateToken, validateDream, async (req, res) => {
  try {
    const { title, description, tags = [], mood, date } = req.body;
    const suspicious = detectSuspiciousContent(title, description);
    
    const dream = await Dream.findOneAndUpdate(
      { _id: req.params.id, userId: req.user.userId },
      { 
        title, 
        description, 
        tags, 
        mood, 
        date: new Date(date),
        suspicious 
      },
      { new: true, runValidators: true }
    ).populate('userId', 'username crewmateColor');
    
    if (!dream) {
      return res.status(404).json({ 
        success: false, 
        error: 'Dream not found' 
      });
    }
    
    res.json({
      success: true,
      message: 'Dream updated successfully',
      dream
    });
  } catch (error) {
    console.error('Update dream error:', error);
    res.status(500).json({ 
      success: false, 
      error: 'Failed to update dream' 
    });
  }
});

// Delete dream
router.delete('/:id', authenticateToken, async (req, res) => {
  try {
    const dream = await Dream.findOneAndDelete({ 
      _id: req.params.id, 
      userId: req.user.userId 
    });
    
    if (!dream) {
      return res.status(404).json({ 
        success: false, 
        error: 'Dream not found' 
      });
    }
    
    res.json({ 
      success: true, 
      message: 'Dream deleted successfully' 
    });
  } catch (error) {
    console.error('Delete dream error:', error);
    res.status(500).json({ 
      success: false, 
      error: 'Failed to delete dream' 
    });
  }
});

// Get statistics (moods, tags, monthly trends)
router.get('/statistics', authenticateToken, async (req, res) => {
  try {
    const userId = req.user.userId;
    
    // Total dreams
    const totalDreams = await Dream.countDocuments({ userId });
    
    // Dreams by mood
    const dreamsByMood = await Dream.aggregate([
      { $match: { userId: mongoose.Types.ObjectId(userId) } },
      { $group: { _id: '$mood', count: { $sum: 1 } } },
      { $sort: { count: -1 } }
    ]);
    
    // Most common tags
    const tagStats = await Dream.aggregate([
      { $match: { userId: mongoose.Types.ObjectId(userId) } },
      { $unwind: '$tags' },
      { $group: { _id: '$tags', count: { $sum: 1 } } },
      { $sort: { count: -1 } },
      { $limit: 10 }
    ]);
    
    // Monthly dream count (last 12 months)
    const monthlyStats = await Dream.aggregate([
      { $match: { userId: mongoose.Types.ObjectId(userId) } },
      {
        $group: {
          _id: {
            year: { $year: '$date' },
            month: { $month: '$date' }
          },
          count: { $sum: 1 },
          firstDate: { $min: '$date' }
        }
      },
      { $sort: { '_id.year': -1, '_id.month': -1 } },
      { $limit: 12 }
    ]);
    
    // Suspicious dreams count
    const suspiciousCount = await Dream.countDocuments({ userId, suspicious: true });
    
    res.json({
      success: true,
      statistics: {
        totalDreams,
        suspiciousCount,
        dreamsByMood,
        tagStats,
        monthlyStats
      }
    });
  } catch (error) {
    console.error('Statistics error:', error);
    res.status(500).json({ 
      success: false, 
      error: 'Failed to fetch statistics' 
    });
  }
});

module.exports = router;