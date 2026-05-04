class QuizQuestion {
  final String question;
  final List<String> answers;

  const QuizQuestion(question, answers)
    : this.question = question,
      this.answers = answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
