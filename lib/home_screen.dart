import 'package:flutter/material.dart';
import 'package:kbcgame/loss.dart';
import 'package:kbcgame/result.dart';

final questions = [
  {
    'questionText': 'Q1. Who created Flutter?',
    'answers': [
      {'text': 'Facebook', 'score': -50},
      {'text': 'Adobe', 'score': -50},
      {'text': 'Google', 'score': 100},
      {'text': 'Microsoft', 'score': -50},
    ],
  },
  {
    'questionText': 'Q2. What is Flutter?',
    'answers': [
      {'text': 'Android Development Kit', 'score': -50},
      {'text': 'IOS Development Kit', 'score': -50},
      {'text': 'Web Development Kit', 'score': -50},
      {
        'text':
            'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
        'score': 100
      },
    ],
  },
  {
    'questionText': ' Q3. Which programing language is used by Flutter',
    'answers': [
      {'text': 'Ruby', 'score': -50},
      {'text': 'Dart', 'score': 100},
      {'text': 'C++', 'score': -50},
      {'text': 'Kotlin', 'score': -50},
    ],
  },
  {
    'questionText': 'Q4. Who created Dart programing language?',
    'answers': [
      {'text': 'Lars Bak and Kasper Lund', 'score': 100},
      {'text': 'Brendan Eich', 'score': -50},
      {'text': 'Bjarne Stroustrup', 'score': -50},
      {'text': 'Jeremy Ashkenas', 'score': -50},
    ],
  },
  {
    'questionText': 'Q5. Dart is an?',
    'answers': [
      {'text': 'open-source', 'score': -50},
      {'text': 'general-purpose', 'score': -50},
      {'text': 'programming language', 'score': -50},
      {'text': ' All of the above', 'score': 100},
    ],
  },
  {
    'questionText': 'Q6. Dart has multiple interfaces.?',
    'answers': [
      {'text': 'FALSE', 'score': -50},
      {'text': 'Can be true or false', 'score': -50},
      {'text': 'TRUE', 'score': 100},
      {'text': 'Can not say', 'score': -50},
    ],
  },
  {
    'questionText': 'Q7.The _______ function is a predefined method in Dart.',
    'answers': [
      {'text': 'return()', 'score': -50},
      {'text': 'list()', 'score': -50},
      {'text': ' declare()', 'score': -50},
      {'text': 'main()', 'score': 100},
    ],
  },
  {
    'questionText': ' Q8.   --version command is used to?',
    'answers': [
      {'text': 'Enables assertions', 'score': -50},
      {'text': ' Displays VM version information', 'score': 100},
      {'text': 'Specifies the path', 'score': -50},
      {'text': 'Specifies where to find imported libraries', 'score': -50},
    ],
  },
  {
    'questionText':
        'Q9.  Which of the following command specifies where to find imported libraries.?',
    'answers': [
      {'text': ' -p', 'score': 100},
      {'text': '. -c', 'score': -50},
      {'text': ' -h', 'score': -50},
      {'text': 'All of the above', 'score': -50},
    ],
  },
  {
    'questionText': 'Q10. Dart programs run in _______ modes.?',
    'answers': [
      {'text': '2', 'score': 100},
      {'text': '5', 'score': -50},
      {'text': '3', 'score': -50},
      {'text': '4', 'score': -50},
    ],
  },
];
int Score = 0;
var Questions = questions[0]['questionText'].toString();

List Answers = questions[0]['answers'] as List;

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  void initState() {
    Score = 0;
    super.initState();
  }

  int i = 0;
  bool screen = false;

  @override
  Widget build(BuildContext context) {
    var AnswerA = Answers[0]['text'].toString();
    var AnswerB = Answers[1]['text'].toString();
    var AnswerC = Answers[2]['text'].toString();
    var AnswerD = Answers[3]['text'].toString();

    var Score1 = Answers[0]['score'].toString();
    var Score2 = Answers[1]['score'].toString();
    var Score3 = Answers[2]['score'].toString();
    var Score4 = Answers[3]['score'].toString();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: const Color.fromRGBO(49, 215, 195, 1.0),
                child: Center(
                  //
                  child: Text(
                    Questions,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 180.0,
                          height: 40.0,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(24, 25, 30, 1))),
                            child: Text(AnswerA),
                            onPressed: () {
                              i++;
                              try {
                                Score = Score + int.parse(Score1);
                                Questions = '';

                                if (questions[i] != 5) {
                                  Questions +=
                                      questions[i]['questionText'].toString();
                                  Answers = questions[i]['answers'] as List;
                                }
                              } on RangeError {
                                if (Score >= 500) {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WonScreen(Score)));
                                } else {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoseScreen(Score)));
                                }
                              }

                              setState(() {
                                print(Score);
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 180.0,
                          height: 40.0,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(24, 25, 30, 1))),
                            child: Text(AnswerB),
                            onPressed: () {
                              i++;
                              try {
                                Score = Score + int.parse(Score2);
                                Questions = '';

                                if (questions[i] != 5) {
                                  Questions +=
                                      questions[i]['questionText'].toString();
                                  Answers = questions[i]['answers'] as List;
                                }
                              } on RangeError {
                                if (Score >= 500) {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WonScreen(Score)));
                                } else {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoseScreen(Score)));
                                }
                              }

                              setState(() {
                                print(Score);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 180.0,
                          height: 40.0,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(24, 25, 30, 1))),
                            child: Text(AnswerC),
                            onPressed: () {
                              i++;
                              try {
                                Score = Score + int.parse(Score3);
                                Questions = '';

                                if (questions[i] != 5) {
                                  Questions +=
                                      questions[i]['questionText'].toString();
                                  Answers = questions[i]['answers'] as List;
                                }
                              } on RangeError {
                                if (Score >= 500) {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WonScreen(Score)));
                                } else {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoseScreen(Score)));
                                }
                              }
                              setState(() {
                                print(Score);
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 180.0,
                          height: 40.0,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(24, 25, 30, 1))),
                            child: Text(AnswerD),
                            onPressed: () {
                              i++;
                              try {
                                Score = Score + int.parse(Score4);
                                Questions = '';

                                if (questions[i] != 5) {
                                  Questions +=
                                      questions[i]['questionText'].toString();
                                  Answers = questions[i]['answers'] as List;
                                }
                              } on RangeError {
                                if (Score >= 500) {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WonScreen(Score)));
                                } else {
                                  Questions =
                                      questions[0]['questionText'].toString();

                                  Answers = questions[0]['answers'] as List;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoseScreen(Score)));
                                }
                              }

                              setState(() {
                                print(Score);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
