import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.child, required this.onPressed }) : super(key: key);
  final Widget child;
  final double width = double.infinity;
  final double height = 40.0;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(Radius.circular(40.0)),
        color: Colors.pink[600],
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0,1.5),
            blurRadius: 1.5,

          ),
        ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: new BorderRadius.all(Radius.circular(40.0)),
          onTap: ()=>onPressed(),
          child: Center(
            child: child,
          )),
      ),
    );
  }
}
