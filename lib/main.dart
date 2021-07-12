import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamaki/data_sources/user_data_source.dart';
import 'package:kamaki/login_page.dart';
import 'package:kamaki/repositories/user_repo.dart';
import 'package:kamaki/services/user_service.dart';

void main() {
  ChopperClient myClient = ChopperClient();
  UserService _myService = UserService.Create(myClient);
  UserDataSource _myData = UserDataSource(_myService);
  UserRepo myRepo = UserRepo(_myData);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kamaki-demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black.withOpacity(0.93),
        primaryTextTheme: GoogleFonts.fredokaOneTextTheme(),
        primarySwatch: Colors.blue,

      ),

      home: LoginPage(title: "Kamaki"),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.pink[800]  ,
        title: Text(widget.title),
      ),
      body: Center(



        child: LoginBody(),

      ),

    );
  }
}
