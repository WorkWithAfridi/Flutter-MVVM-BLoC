// ignore_for_file: public_member_api_docs, sort_constructors_first
class ExampleUserModel {
  String? name;
  String? id;
  String? token;
  String? email;
  ExampleUserModel({
    this.name,
    this.id,
    this.token,
    this.email,
  });

  ExampleUserModel copyWith({
    String? name,
    String? id,
    String? token,
    String? email,
  }) {
    return ExampleUserModel(
      name: name ?? this.name,
      id: id ?? this.id,
      token: token ?? this.token,
      email: email ?? this.email,
    );
  }
}
