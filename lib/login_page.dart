import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamaki/login_button.dart';
import 'package:kamaki/social_sign_in.dart';


class Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        Text("Login",style: GoogleFonts.fredokaOne(
          textStyle: TextStyle(color: Colors.pink[500],fontSize: 35,fontWeight:FontWeight.w600),
        ),),
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
  TextEditingController user_name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(20),height: 500,width: MediaQuery.of(context).size.width,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text("Username: ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
         TextField(controller: user_name,style: TextStyle(color: Colors.white)),
         Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white)),
         TextField(controller: password,style: TextStyle(color: Colors.white)),

         ForgotPassword(),
         Login_buttonWidget(),
         Divider(),

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
        child: Text("Forgot password?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white60)),
      ),
    );
  }
}

class Login_buttonWidget extends StatelessWidget {
  const Login_buttonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          width: double.infinity,

          child:LoginButton(

            onPressed: () {},
            child: Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),





          ),




        ),
    );
  }
}
