import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './screens/login_screen.dart';
void main(){
  runApp(LoginApp());
  debugPaintSizeEnabled=false;
}
class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
      
    );
  }
}