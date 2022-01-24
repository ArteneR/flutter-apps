import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionsBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  String getQuestionText() {
    return _questionsBank[_questionNumber].text;
  }

  bool getCorrectAnswer() {
    return _questionsBank[_questionNumber].answer;
  }

  void nextQuestion() {
    if (!isFinished()) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionsBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
