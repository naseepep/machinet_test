import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User( {
        this.avatar,
        this.name,
      
        this.message,
    });

    String? avatar;
    String? name;
  
    String? message;

    factory User.fromJson(Map<String, dynamic> json) => User(
        avatar: json["Avatar"],
        name: json["Name"],
        
        message: json["Message"],
    );

    Map<String, dynamic> toJson() => {
        "Avatar": avatar,
        "Name": name,
      
        "Message": message,
    };
}
