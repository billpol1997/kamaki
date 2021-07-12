import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SocialSingIn extends StatelessWidget {
  const SocialSingIn({Key? key}) : super(key: key);
  void _showButtonPressDialog(BuildContext context, String provider) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("-or- ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white60),),
          Text(" sign in  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white60),),
          Text("with ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white60),),
          Divider(),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               SignInButtonBuilder(
                 text: "Ignored for mini button",
                 icon: Icons.email,
                 mini: true,
                 onPressed: ()
                 {
                   _showButtonPressDialog(context,'Email (mini)');
                 },
                 backgroundColor: Colors.blueGrey[700]!,

               ),
               Divider(),

               SignInButton(Buttons.Facebook,
                   mini: true,
                   text: "Ignored for mini button",
                   onPressed: (){_showButtonPressDialog(context,'Facebook (mini)');
                   }),
               Divider(),
               SignInButton(
                 Buttons.Twitter,
                 mini: true,
                 text: "Ignored for mini button",
                 onPressed: ()
                 {
                   _showButtonPressDialog(context,'Twitter (mini)');
                 },
               )
             ],
           ),


        ],
      ),
    );
  }
}

