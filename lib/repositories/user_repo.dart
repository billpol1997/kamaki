import 'package:kamaki/data_sources/user_data_source.dart';
import 'package:kamaki/entities/user.dart';
import 'package:kamaki/models/user_model.dart';
import 'package:kamaki/repositories/domain_response.dart';
import 'package:kamaki/repositories/mapper.dart';


class UserRepo
{
  final UserDataSource _userDataSource;
  final UserMapper _userMapper;

  UserRepo(this._userDataSource, this._userMapper);
  Future<DomainResponse<List<User>>> GetUsers()
  async {

    try
    {
      final List<UserModel> userList = await _userDataSource.FetchUsers();
      //*********TO-DO Mapping*********
      final List<User> users = userList.map(_userMapper.toDomain).toList();
      //same as:
      // for(UserModel userModel in userList)
      //   {
      //     users.add(_userMapper.toDomain(userModel));
      //   }
      return DomainResponse.success(users);
    }catch(e)
    {
      return DomainResponse.failure("Error 875");
    }


  }
}