import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamaki/login_button.dart';
import 'package:kamaki/repositories/user_repo.dart';
import 'package:kamaki/social_sign_in.dart';

import 'bloc/users_bloc.dart';
import 'home_page.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Login",
          style: GoogleFonts.fredokaOne(
            textStyle: TextStyle(
                color: Colors.pink[500],
                fontSize: 35,
                fontWeight: FontWeight.w600),
          ),
        ),
        Login_form(),
      ],
    );
  }
}

class Login_form extends StatefulWidget {
  const Login_form({Key? key}) : super(key: key);

  @override
  _Login_formState createState() => _Login_formState();
}

class _Login_formState extends State<Login_form> {
  final TextEditingController user_name = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool hideText = false;

  void toggle() {
    setState(() {
      hideText = !hideText;
    });
  }

  @override
  void dispose() {
    user_name.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 500,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Username: ",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          TextField(
            controller: user_name,
            style: TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                labelText: 'Username or Email',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: const Icon(Icons.account_circle_rounded),
                )),
          ),
          Divider(),
          Text(
            "Password: ",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          TextField(
            controller: password,
            style: TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              labelText: 'Password',
              icon: const Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: const Icon(Icons.lock),
              ),
            ),
            obscureText: hideText,
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 300.0),
            child: TextButton(
              child: new Text(hideText ? "Show" : "Hide",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60)),
              onPressed: toggle,
            ),
          ),

          ForgotPassword(),
          Login_buttonWidget(),
          //Divider(),

          SocialSingIn(),

          //Text("Forgot password?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white60)),
        ],
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextButton(
        onPressed: () {},
        child: Text("Forgot password?",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white60)),
      ),
    );
  }
}

class Login_buttonWidget extends StatelessWidget {
  const Login_buttonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        width: double.infinity,
        child: LoginButton(
          onPressed: () {
            final UserRepo repo = context.read<UserRepo>();
            Navigator
                .of(context)
                .push(MaterialPageRoute(builder: (context) =>
                BlocProvider(
                       create: (context) => UsersBloc(repo),
                 child: HomePage())));
            },
          child: Text("Login",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }


}
