import 'package:quiz_app/models/QuizQuestion.dart';

const questions = [
  QuizQuestion(questions: 'What type of language is Go?', answers: [
    'Procedural programming language',
    'Scripting language',
    'Object-oriented programming language',
    'Functional programming language'
  ]),
  QuizQuestion(
      questions:
          'Which of the following is the correct way to declare a variable in Go?',
      answers: ['x := 5', 'var x = 5', 'let x = 5', 'declare x = 5']),
  QuizQuestion(
      questions: 'Which keyword is used to define a package in Go?',
      answers: ['package', 'namespace', 'module', 'define']),
  QuizQuestion(
      questions:
          'What is the default value of an uninitialized integer variable in Go?',
      answers: ['0', '1', 'Null', 'None of the above']),
  QuizQuestion(
      questions: 'Which function is used to print output in Go?',
      answers: ['fmt.Println', 'println', 'print', 'output.Print']),
  QuizQuestion(questions: 'How do you define a constant in Go?', answers: [
    'const PI float64 = 3.14',
    'define PI = 3.14',
    'constant PI = 3.14',
    'let PI = 3.14'
  ]),
  QuizQuestion(
      questions: 'Which Go data type is used to store true/false values?',
      answers: ['bool', 'int', 'bit', 'boolean']),
  QuizQuestion(
      questions: 'Which Go keyword is used to handle exceptions?',
      answers: ['recover', 'catch', 'try', 'throw']),
  QuizQuestion(
      questions: 'What does the following code snippet output?',
      codeSnippet: '''func main() { var x int = 42 fmt.Println(&x) }''',
      answers: ['The memory address of x', '42', 'An error', 'Nil']),
];
