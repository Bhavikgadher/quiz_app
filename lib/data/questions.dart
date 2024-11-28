import 'package:quiz_app/models/QuizQuestion.dart';

const questions = [
  QuizQuestion(
      questions: 'What type of language is Go?',
      answers: [
        'Procedural programming language',
        'Scripting language',
        'Object-oriented programming language',
        'Functional programming language'
      ],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions:
          'Which of the following is the correct way to declare a variable in Go?',
      answers: ['x := 5', 'var x = 5', 'let x = 5', 'declare x = 5'],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions: 'Which keyword is used to define a package in Go?',
      answers: ['package', 'namespace', 'module', 'define'],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions:
          'What is the default value of an uninitialized integer variable in Go?',
      answers: ['0', '1', 'Null', 'None of the above'],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions: 'Which function is used to print output in Go?',
      answers: ['fmt.Println', 'println', 'print', 'output.Print'],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions: 'How do you define a constant in Go?',
      answers: [
        'const PI float64 = 3.14',
        'define PI = 3.14',
        'constant PI = 3.14',
        'let PI = 3.14'
      ],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions: 'Which Go data type is used to store true/false values?',
      answers: ['bool', 'int', 'bit', 'boolean'],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions: 'Which Go keyword is used to handle exceptions?',
      answers: ['recover', 'catch', 'try', 'throw'],
      correctAnswerIndex: 0),
  QuizQuestion(
      questions: 'What does the following code snippet output?',
      codeSnippet: '''func main() { var x int = 42 fmt.Println(&x) }''',
      answers: ['The memory address of x', '42', 'An error', 'Nil'],
      correctAnswerIndex: 0),
];
