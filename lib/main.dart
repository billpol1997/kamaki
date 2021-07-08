import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamaki/login_page.dart';

void main() {
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

      home: MyHomePage(title: "Kamaki"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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



        child: Login_page(),

      ),

    );
  }
}
