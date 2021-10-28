

import 'dart:convert';

NajotApi najotApiFromJson(String str) => NajotApi.fromJson(json.decode(str));

class NajotApi {
  NajotApi({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  dynamic next;
  dynamic previous;
  List<Result>? results;

  factory NajotApi.fromJson(Map<String, dynamic> json) => NajotApi(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
}

class Result {
  Result({
    this.url,
    this.user,
    this.title,
    this.content,
    this.publish,
  });

  String? url;
  User? user;
  String? title;
  String? content;
  DateTime? publish;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        url: json["url"],
        user: User.fromJson(json["user"]),
        title: json["title"],
        content: json["content"],
        publish: DateTime.parse(json["publish"]),
      );
}

class User {
  User({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  String? username;
  String? email;
  String? firstName;
  String? lastName;

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
      );
}
