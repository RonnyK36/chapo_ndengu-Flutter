import 'package:chapo_ndengu/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text('Sign in to Chapo Ndengu'),
        backgroundColor: Colors.green[500],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text('Sign in Anon'),
          onPressed: () async {
            dynamic result = await _auth.SignInAnon();
            if (result == null) {
              print("Not signed in");
            } else {
              print('Success');
              print(result.uid);
              // Navigator.pushNamed(context, )
            }
          },
        ),
      ),
    );
  }
}
