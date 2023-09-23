const express = require('express');
const router = express.Router();
const Answer = require('../models/Answer.js');


router.post('/answers', async (req, res) => {
  try {
    const answer = new Answer(req.body);
    await answer.save();
    res.status(201).json(answer);
  } catch (error) {
    res.status(500).json({ error: 'Error creating answer' });
  }
});

module.exports = router;