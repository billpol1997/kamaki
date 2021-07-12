import 'package:chopper/chopper.dart';

part 'user_service.chopper.dart';
@ChopperApi(baseUrl: "/")
abstract class UserService extends ChopperService
{

  static UserService Create( ChopperClient client )=>_$UserService(client);


  @Get(path:"")
  Future<Response>FetchUsers();






}