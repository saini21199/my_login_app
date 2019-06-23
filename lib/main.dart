import 'package:flutter/material.dart';
import './screens/login_screen.dart';
void main(){
  runApp(LoginScreen());
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