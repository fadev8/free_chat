/// user : {"name":"Victor","avatar":"default.png","phone":"099999999"}
/// messages : [{"sender":{"name":"Victor","avatar":"default.png","phone":"099999999"},"receiver":{"name":"Victor","avatar":"default.png","phone":"099999999"},"content":"Salut le monde","createdAt":23433}]

List<Messages> messages = [
  Messages(
      sender: User(
          name: "victor", avatar: "images/chris.jpg", phone: "09876543225"),
      receiver: User(
          name: "Faden", avatar: "images/success.PNG", phone: "09876543225"),
      content: "Utaniyoka nnnn",
      createdAt: DateTime.fromMillisecondsSinceEpoch(1597151374 * 1000)),
  Messages(
      sender: User(
          name: "victor", avatar: "images/happy.PNG", phone: "09876543225"),
      receiver:
          User(name: "Faden", avatar: "images/afro.PNG", phone: "09876543225"),
      content: "Utaniyoka nnnn",
      createdAt: DateTime.fromMillisecondsSinceEpoch(1597151374 * 1000)),
  Messages(
      sender:
          User(name: "victor", avatar: "images/yoga.PNG", phone: "09876543225"),
      receiver:
          User(name: "Faden", avatar: "images/happy.PNG", phone: "09876543225"),
      content: "Utaniyoka nnnn",
      createdAt: DateTime.fromMillisecondsSinceEpoch(1597151374 * 1000)),
];

/// sender : {"name":"Victor","avatar":"default.png","phone":"099999999"}
/// receiver : {"name":"Victor","avatar":"default.png","phone":"099999999"}
/// content : "Salut le monde"
/// createdAt : 23433

class Messages {
  User sender;
  User receiver;
  String content;
  DateTime createdAt;

  Messages({this.sender, this.receiver, this.content, this.createdAt});

  Messages.fromJson(dynamic json) {
    sender = json["sender"] != null ? User.fromJson(json["sender"]) : null;
    receiver =
        json["receiver"] != null ? User.fromJson(json["receiver"]) : null;
    content = json["content"];
    createdAt = json["createdAt"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (sender != null) {
      map["sender"] = sender.toJson();
    }
    if (receiver != null) {
      map["receiver"] = receiver.toJson();
    }
    map["content"] = content;
    map["createdAt"] = createdAt;
    return map;
  }
}

/// name : "Victor"
/// avatar : "default.png"
/// phone : "099999999"

/// name : "Victor"
/// avatar : "default.png"
/// phone : "099999999"

/// name : "Victor"
/// avatar : "default.png"
/// phone : "099999999"

class User {
  String name;
  String avatar;
  String phone;

  User({this.name, this.avatar, this.phone});

  User.fromJson(dynamic json) {
    name = json["name"];
    avatar = json["avatar"];
    phone = json["phone"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["avatar"] = avatar;
    map["phone"] = phone;
    return map;
  }
}
