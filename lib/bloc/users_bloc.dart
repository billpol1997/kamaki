import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamaki/bloc/users_event.dart';
import 'package:kamaki/bloc/users_state.dart';
import 'package:kamaki/entities/user.dart';
import 'package:kamaki/repositories/domain_response.dart';
import 'package:kamaki/repositories/user_repo.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(this.userRepo) : super(InitialUsersState());
  final UserRepo userRepo;

  @override
  Stream<UsersState> mapEventToState(UsersEvent event) async* {
    // TODO: implement mapEventToState
    if (event is Loaded) {
      yield LoadingState();
      final DomainResponse<List<User>> domainResponse =
          await userRepo.GetUsers();
      yield* domainResponse.when(success: (List<User> users) async* {
        yield UserSuccess(users);
      }, failure: (String userF) async* {
        yield UserFailure(userF);
      });
    }


  }
}
