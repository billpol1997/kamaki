import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:kamaki/models/user_model.dart';
import 'package:kamaki/services/user_service.dart';

class UserDataSource {
  final UserService _userService;

  UserDataSource(this._userService);

  Future<List<UserModel>> fetchUsers() async {
    final Response apiResponse = await _userService.FetchUsers(10);

    if (apiResponse.isSuccessful) {
      Map<String, dynamic> decodedBody = jsonDecode(apiResponse.body);
      List<dynamic> users = decodedBody['results'] as List;

      List<UserModel> userModels = [];
      for (var user in users) {
        final String name = user['name']['first'] + ' ' + user['name']['last'];
        final int age = user['dob']['age'] as int;
        final String image = user['picture']['medium'];
        final String gender = user['gender'];
        userModels.add(UserModel(gender, name, image, age));
      }

      return userModels;
    } else {
      throw Exception();
    }
  }
}
