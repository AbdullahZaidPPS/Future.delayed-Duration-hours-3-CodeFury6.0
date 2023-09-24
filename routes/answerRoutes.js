const express = require('express');
const router = express.Router();
const answerController = require('../controllers/answerController');

router.post('/enterAnswers', answerController.createAnswer);
router.get('/:questionId', answerController.getAnswersForQuestion);

module.exports = router;