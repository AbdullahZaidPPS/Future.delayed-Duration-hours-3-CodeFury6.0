const express = require('express');
const router = express.Router();
const questionController = require('../controllers/questionController');

router.post('/enterquestions', questionController.createQuestion);
router.get('/fetchQuestions', questionController.getAllQuestions);

module.exports = router;