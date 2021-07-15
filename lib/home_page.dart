import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamaki/bloc/users_bloc.dart';
import 'package:kamaki/bloc/users_event.dart';
import 'package:kamaki/bloc/users_state.dart';

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
      body: BlocBuilder<UsersBloc, UsersState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is InitialUsersState) {
            return UserCard(
              users: [
                User("kamaki", 18, "", "non-binary"),
              ],
              onDisLike: () {},
              onSuperLike: () {},
              onLike: () {},
            );
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.pink[700],
              ),
            );
          } else if (state is UserSuccess) {
            final UserSuccess successState = state;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: UserCard(
                users: successState.users,
                onDisLike: () {},
                onSuperLike: () {},
                onLike: () {},
              ),
            );
          } else {
            final UserFailure failureState = state as UserFailure;
            return Text(failureState.errorMessage,
                style: TextStyle(color: Colors.white));
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
        //
        //   ],
        // ),
      ),
    );
  }
}

// Inherited Widget
// Provider
// BlocProvider

class UserCard extends StatefulWidget {
  const UserCard(
      {Key? key,
      required this.users,
      required this.onDisLike,
      required this.onLike,
      required this.onSuperLike})
      : super(key: key);
  final List<User> users;
  final void Function() onDisLike;
  final void Function() onLike;
  final void Function() onSuperLike;

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  late User user;

  @override
  void initState() {
    user = widget.users.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.black,
        //height: 400,
        child: Stack(children: [
          Container(
            height: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                child: Image.network(
                  user.imageUrl != ""
                      ? user.imageUrl
                      : "https://randomuser.me/api/portraits/med/women/31.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            color: Colors.black.withOpacity(0.242),
          ),
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "${user.name}, ${user.age}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.check_circle_sharp,
                      color: Colors.blue,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  user.bio == null
                      ? "EIMAI POUTANA TO LEW DYNATA"
                      : user.bio! + "EIMAI POUTANA TO LEW DYNATA",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            user = widget.users.elementAt(
                                (widget.users.indexOf(user) + 1) %
                                    widget.users.length);
                          });
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.red, width: 2)),
                          shape: MaterialStateProperty.all(CircleBorder()),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // <-- Button color
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.red
                                  .withOpacity(0.3); // <-- Splash color
                          }),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            user = widget.users.elementAt(
                                (widget.users.indexOf(user) + 1) %
                                    widget.users.length);
                          });
                        },
                        child: Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.blue, width: 2)),
                          shape: MaterialStateProperty.all(CircleBorder()),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // <-- Button color
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.blue
                                  .withOpacity(0.3); // <-- Splash color
                          }),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            user = widget.users.elementAt(
                                (widget.users.indexOf(user) + 1) %
                                    widget.users.length);
                          });
                        },
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.green, width: 2)),
                          shape: MaterialStateProperty.all(CircleBorder()),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // <-- Button color
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.green
                                  .withOpacity(0.3); // <-- Splash color
                          }),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            alignment: Alignment(-0.8, 1.0),
          )
        ]),
      ),
    );
  }
}
