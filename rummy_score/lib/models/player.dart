class Player {
  int id = 1;
  String name;

  Player({required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  Player.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"];

  @override
  String toString() {
    return 'Player{id: $id, name: $name}';
  }
}
