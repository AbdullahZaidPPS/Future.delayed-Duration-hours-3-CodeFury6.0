const Question = require('../models/questions');

exports.createQuestion = async (req, res) => {
  try {
    const { text } = req.body;
    const question = new Question({ text });
    await question.save();
    res.status(201).json(question);
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
};

exports.getAllQuestions = async (req, res) => {
  try {
    const questions = await Question.find().exec();
    res.json(questions);
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
};