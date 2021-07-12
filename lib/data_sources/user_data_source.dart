import 'package:chopper/chopper.dart';
import 'package:kamaki/models/user_model.dart';
import 'package:kamaki/services/user_service.dart';

class UserDataSource
{

  final UserService _userService;

  UserDataSource(this._userService);
  Future<List<UserModel>> FetchUsers() async {

   final Response apiResponse  = await _userService.FetchUsers();
   if(apiResponse.isSuccessful)
     {
       var users = apiResponse.body['results'] as List;
       //*********TO-DO Mapping**********

       for(dynamic user in users)
         {
           final String name = users[''];
         }




     }else
       {
         throw Exception();
       }

  }



}