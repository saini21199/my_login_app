import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  Widget buildHeader() {
    return Container(child: Image.asset('assets/login.png'));
  }

  Widget buildTextField() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextFormField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0)),
            labelText: 'Username',
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
            labelStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            prefixIcon: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          cursorColor: Colors.white,
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.0)),
            labelText: 'Password',
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
            labelStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: true,
              checkColor: Colors.white,
              //activeColor: Colors.white,
              onChanged: (newvalue) {},
            ),
            Text('Remember me',
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, letterSpacing: 0.5))
          ],
        )
      ],
    );
  }

  Widget buildLogInButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 25.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: RaisedButton(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 120.0),
            onPressed: () {},
            child: Text(
              'Log In',
              style: TextStyle(
                  color: Color.fromRGBO(226, 126, 154, 1.0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }

  Widget buildSignUpButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: RaisedButton(
            color: Color.fromRGBO(224, 84, 110, 1.0),
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 120.0),
            onPressed: () {},
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }

  Widget buildMainContent() {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        children: <Widget>[
          buildTextField(),
          buildLogInButtons(),
          buildSignUpButtons(),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
            child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Forget your password",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                )),
          )
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 35.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.fill)),
      child: Column(
        children: <Widget>[buildHeader(), buildMainContent()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }
}
