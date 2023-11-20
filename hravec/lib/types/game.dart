class Game {
  String? parent;
  String? id;
  String? title;
  List<String>? titleAliases;
  List<String>? tags;
  String? rules;

  Game(
      {this.parent,
      this.id,
      this.title,
      this.titleAliases,
      this.tags,
      this.rules});

  Game.fromJson(Map<String, dynamic> json) {
    parent = json['parent'];
    id = json['id'];
    title = json['title'];
    titleAliases = json['titleAliases'].cast<String>();
    tags = json['tags'].cast<String>();
    rules = json['rules'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parent'] = this.parent;
    data['id'] = this.id;
    data['title'] = this.title;
    data['titleAliases'] = this.titleAliases;
    data['tags'] = this.tags;
    data['rules'] = this.rules;
    return data;
  }
}