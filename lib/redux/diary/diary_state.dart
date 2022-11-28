class DiaryState {
  String example;

  DiaryState({
    required this.example,
  });

  factory DiaryState.initial() {
    return DiaryState(
      example: "",
    );
  }

  DiaryState copyWith({
    String? example,
  }) {
    return DiaryState(
      example: example ?? this.example,
    );
  }
}
