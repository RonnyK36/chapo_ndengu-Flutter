import 'package:chapo_ndengu/screens/authenticate/authenticate.dart';
import 'package:chapo_ndengu/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Authenticate(),
    );
  }
}