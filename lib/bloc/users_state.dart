
import 'package:kamaki/entities/user.dart';

abstract class UsersState
{


}

class InitialUsersState extends UsersState
{

}

class LoadingState extends UsersState
{

}

class UserSuccess extends UsersState
{
  final List<User>users;

  UserSuccess(this.users);
}

class UserFailure extends UsersState
{
  final String errorMessage;

  UserFailure(this.errorMessage);



}
