const Answer = require('../models/answer');

exports.createAnswer = async (req, res) => {
  try {
    const { questionId, text } = req.body;
    const answer = new Answer({ questionId, text });
    await answer.save();
    res.status(201).json(answer);
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
};

exports.getAnswersForQuestion = async (req, res) => {
  try {
    const { questionId } = req.params;
    const answers = await Answer.find({ questionId }).exec();
    res.json(answers);
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
};