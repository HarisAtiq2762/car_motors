class SaveCarState{
  final bool saved;

  const SaveCarState({this.saved});

  factory SaveCarState.initial() => SaveCarState(saved: false);
}