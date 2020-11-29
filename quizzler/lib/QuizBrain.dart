import 'Question.dart';

int _questionNo = 0;

class QuizBrain {
  List<Question> _questionBank = [
    Question(
        'Quid e Azam was the first President of the Constitution Assembly of Pakistan?',
        true),
    Question('After 9 years did Pakistan got its first constitution?', true),
    Question(
        'On 9th June 1950 the Constituent Assembly passed the Objective Resolution?',
        false),
    Question('Mohammad Ali Bogra was a forign minister?', false),
    Question(
        'Islamic Republic of Pakistan official name was given to Pakistan in 1956 constitution?',
        true),
    Question(
        'In 1971 east pakistan decided to seek independence and took the name bangladesh',
        true),
    Question(
        'The division of india into two nations peacefully resolved the religious conflicts that had plagued colonial india',
        false),
    Question(
        'In 1947 india became the worlds largest democracy when it won its independence',
        true),
    Question(
        'The indian government has always supported militant sikh minority leaders in the country',
        false),
    Question('Tension continues today between India and Pakistan over Kashmir',
        true),
    Question(
        'The British began the "quit india" campaign because they wanted to help india make a gradual and peaceful transition to democratic self- rule',
        false),
  ];

  void nextQuestion() {
    if (_questionNo < _questionBank.length) {
      _questionNo++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNo].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNo].questionAns;
  }
}
