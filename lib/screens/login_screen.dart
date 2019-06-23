import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {

  Widget buildbody(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.png'))
      ),
      child: Column(
        children: <Widget>[
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildbody(context),
      
    );
  }
}