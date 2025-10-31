import 'dart:io';

class Question{
  String? ques;
  List<String> options;
  int correctAns;

  Question(this.ques, this.options, this.correctAns);
  bool isCorrect(int userChoice){
    return userChoice==correctAns;
  }
}

class Quiz{
  List<Question> questions;
  int score =0;

  Quiz(this.questions);

  void start(){
    print("Welcome to the Quiz");

      for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print("Q${i + 1}: ${q.ques}");

      for (int j = 0; j < q.options.length; j++) {
        print("${j + 1}. ${q.options[j]}");
      }

      stdout.write("Enter your answer (1-${q.options.length}): ");
      int? userAnswer = int.tryParse(stdin.readLineSync()!);

      if (userAnswer != null && userAnswer >= 1 && userAnswer <= q.options.length) {
        if (q.isCorrect(userAnswer - 1)) {
          print("Correct!\n");
          score++;
        } else {
          print("Wrong! Correct answer: ${q.options[q.correctAns]}\n");
        }
      } else {
        print("Invalid input! Skipping question.\n");
      }
    }
    print("Quiz Over!");
    print("Your final score: $score / ${questions.length}");

  }

}
void main() {
  
  var q1 = Question("What is the capital of France?",
      ["Berlin", "Madrid", "Paris", "Rome"], 2);

  var q2 = Question("Which planet is known as the Red Planet?",
      ["Earth", "Mars", "Jupiter", "Venus"], 1);

  var q3 = Question("Who developed the Dart language?",
      ["Google", "Microsoft", "Apple", "Oracle"], 0);


  var quiz = Quiz([q1, q2, q3]);


  quiz.start();
}