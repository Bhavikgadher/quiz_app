class QuizQuestion {
  const QuizQuestion(
      {required this.questions, required this.answers, this.codeSnippet,required this.correctAnswerIndex,});

  final String questions;
  final List<String> answers;
  final String? codeSnippet;
  final int correctAnswerIndex;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

  String getCorrectAnswer(){
    return answers[correctAnswerIndex];
  }

}
