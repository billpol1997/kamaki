import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'entities/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text("Kamaki"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: UserCard(),
          ),
          //Rate(),
        ],
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
