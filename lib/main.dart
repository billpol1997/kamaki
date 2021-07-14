import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamaki/data_sources/user_data_source.dart';
import 'package:kamaki/login_page.dart';
import 'package:kamaki/repositories/mapper.dart';
import 'package:kamaki/repositories/user_repo.dart';
import 'package:kamaki/services/user_service.dart';

void main() {
  // TODO: Add dependency injection
  final ChopperClient myClient = ChopperClient(baseUrl: 'https://randomuser.me/api');
  final UserService _myService = UserService.create(myClient);
  final UserDataSource _myData = UserDataSource(_myService);
  final UserMapper _myUserMapper = UserMapper();
  final UserRepo myRepo = UserRepo(
      _myData,
      _myUserMapper
  );

  runApp(MyApp(appRepo: myRepo,));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final UserRepo appRepo;

  const MyApp({Key? key, required this.appRepo}) : super(key: key);

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
      home: RepositoryProvider<UserRepo>.value(value:appRepo, child: LoginPage(title: "Kamaki")),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text(widget.title),
      ),
      body: Center(
        child: LoginBody(),
      ),
    );
  }
}
