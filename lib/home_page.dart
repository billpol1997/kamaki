import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamaki/bloc/users_bloc.dart';
import 'package:kamaki/bloc/users_event.dart';
import 'package:kamaki/bloc/users_state.dart';
import 'package:kamaki/repositories/user_repo.dart';

import 'entities/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final UsersBloc bloc;
  @override
  void initState() {
    // TODO: implement initState
    bloc = context.read<UsersBloc>();
    bloc.add(Loaded());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text("Kamaki"),
      ),
      body:
         BlocBuilder<UsersBloc, UsersState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is InitialUsersState) {
              return UserCard(user: User("kamaki", 18, " ", "non-binary"));
            } else if (state is LoadingState) {
              return CircularProgressIndicator(color: Colors.pink[700],);
            } else if (state is UserSuccess) {
              final UserSuccess successState = state as UserSuccess;
              return Text("success",style: TextStyle(color: Colors.white),);
              //return UserCard(user: successState.users.first);
            }else{
              final UserFailure failureState = state as UserFailure;
              return Text(failureState.errorMessage,style: TextStyle(color: Colors.white));
            }
          },
          // child: Column(
          //   children: [
          //     SizedBox(
          //       height: 40,
          //     ),
          //
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //       child: UserCard(),
          //     ),
          //     //TODO:Rate(),
          //   ],
          // ),
        ),

    );
  }
}

// Inherited Widget
// Provider
// BlocProvider

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.black,
        height: 400,
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            child: Image.asset(
              'assets/images/934246926f16ded570c3ec799b3f62a3.jpg',
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
