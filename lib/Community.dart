import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CommunityScreen(),
  ));
}

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Question> questions = [
    Question(
      'What are some effective ways to manage stress?',
      'Effective stress management includes deep breathing exercises and time management.',
      upvotes: 5,
      comments: [
        Comment('Great advice!', 'User1'),
        Comment('I totally agree.', 'User2'),
      ],
    ),
    Question(
      'How do you cope with anxiety on a daily basis?',
      'Relaxation techniques like meditation and mindfulness help reduce anxiety.',
      upvotes: 10,
      comments: [
        Comment('I found "Flutter in Action" very helpful.', 'Radhajayshree'),
      ],
    ),
    Question(
      'What are the benefits of regular exercise for mental health?',
      'Regular exercise releases endorphins, which are known as "feel-good" hormones, and can help improve mood and reduce symptoms of depression and anxiety.',
      upvotes: 8,
      comments: [
        Comment('Exercise has been a game-changer for me!', 'RAVI'),
      ],
    ),
    Question(
      'How can I improve my sleep quality?',
      'Improving sleep quality involves maintaining a regular sleep schedule, creating a relaxing bedtime routine, and ensuring a comfortable sleep environment.',
      upvotes: 6,
      comments: [],
    ),
    Question(
      'What are some effective ways to reduce screen time?',
      'Reducing screen time can be achieved by setting limits, finding alternative activities, and being mindful of digital usage.',
      upvotes: 7,
      comments: [],
    ),
    
     Question(
      'How do you cope with anxiety on a daily basis?',
      'Relaxation techniques like meditation and mindfulness help reduce anxiety.',
      upvotes: 10,
      comments: [
        Comment('My wife has been doing yoga after following this course in moodez app she is happier than before', 'User3'),
      ],
    ),
     Question(
      'How can I help someone who is experiencing a mental health crisis?',
      'Encourage them to seek professional help immediately and provide emotional support while waiting for assistance.',
      upvotes: 10,
      comments: [
        Comment('really helped my friend!', 'Akshay Gupta'),
      ],
    ),
     Question(
      'How can I address negative thought patterns and cognitive distortions?',
      'Cognitive-behavioral therapy (CBT) can help identify and challenge negative thought patterns for improved mental health..',
      upvotes: 10,
      comments: [
        Comment('I hv never felt better tahn this before', 'Geet2345'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFB6D78),
        title: Text('Community'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuestionTile(question: questions[index]);
        },
      ),
    );
  }
}

class Question {
  final String title;
  final String answer;
  int upvotes;
  List<Comment> comments;

  Question(this.title, this.answer, {this.upvotes = 0, this.comments = const []});
}

class Comment {
  final String text;
  final String user;

  Comment(this.text, this.user);
}

class QuestionTile extends StatefulWidget {
  final Question question;

  QuestionTile({required this.question});

  @override
  _QuestionTileState createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(widget.question.title),
            subtitle: Text(widget.question.answer),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up,color: Colors.amber),
                  onPressed: () {
                    setState(() {
                      widget.question.upvotes++;
                    });
                  },
                ),
                Text(widget.question.upvotes.toString()),
                IconButton(
                  icon: Icon(Icons.comment,color: Color(0xFFFB6D78),),
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                ),
                Text(widget.question.comments.length.toString()),
              ],
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Comments:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (final comment in widget.question.comments)
                    ListTile(
                      title: Text(comment.text),
                      subtitle: Text('User: ${comment.user}'),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
