class BoardGame {
  final String id;
  final String name;

  BoardGame(this.id, this.name);
  factory BoardGame.fromJson(Map<String, dynamic> json) {
    return BoardGame(
      json['id'],
      json['name'],
    );
  }
}
