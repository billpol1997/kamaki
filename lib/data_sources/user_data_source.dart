import 'package:chopper/chopper.dart';
import 'package:kamaki/models/user_model.dart';
import 'package:kamaki/services/user_service.dart';

class UserDataSource {
  final UserService _userService;

  UserDataSource(this._userService);

  Future<List<UserModel>> FetchUsers() async {
    final Response apiResponse = await _userService.FetchUsers();

    if (apiResponse.isSuccessful) {
      List<Map<String, dynamic>> users =
          apiResponse.body['results'] as List<Map<String, dynamic>>;

      List<UserModel> userModels = [];
      for (Map<String, dynamic> user in users) {
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
