class QuizQuestion {
  const QuizQuestion(
      {required this.questions, required this.answers, this.codeSnippet});

  final String questions;
  final List<String> answers;
  final String? codeSnippet;

}
