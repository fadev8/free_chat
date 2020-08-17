/// user : {"name":"Christian","phone":"097734544","avatar":"default.png"}
/// status : ["imageurl","imageurl","imageurl","imageurl"]
/// createdAt : 234234
import "disc.dart";

List<Status> statusData = [
  Status(
      createdAt: DateTime.fromMillisecondsSinceEpoch(1597152415 * 1000),
      user:
          User(phone: "090938423", avatar: "images/success.PNG", name: "Faden"),
      status: [
        "images/chris.jpg",
        "images/success.PNG",
        "images/chris.jpg",
        "images/success.PNG"
      ]),
  Status(
      createdAt: DateTime.fromMillisecondsSinceEpoch(1597152415 * 1000),
      user:
          User(phone: "090938423", avatar: "images/chris.jpg", name: "Alfred"),
      status: [
        "images/chris.jpg",
        "images/success.PNG",
        "images/chris.jpg",
        "images/success.PNG"
      ]),
];

class Status {
  User user;
  List<String> status;
  DateTime createdAt;

  Status({this.user, this.status, this.createdAt});

  Status.fromJson(dynamic json) {
    user = json["user"] != null ? User.fromJson(json["user"]) : null;
    status = json["status"] != null ? json["status"].cast<String>() : [];
    createdAt = DateTime.fromMillisecondsSinceEpoch(json["createdAt"]);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (user != null) {
      map["user"] = user.toJson();
    }
    map["status"] = status;
    map["createdAt"] = createdAt;
    return map;
  }
}

/// name : "Christian"
/// phone : "097734544"
/// avatar : "default.png"
