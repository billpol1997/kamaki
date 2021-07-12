import 'package:json_annotation/json_annotation.dart';

class UserModel {
  final String gender;
  final String name;
  final String image;
  final int age;

  UserModel(this.gender, this.name, this.image, this.age);
}
