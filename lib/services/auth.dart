// ignore: import_of_legacy_library_into_null_safe
import 'package:chapo_ndengu/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user based on FIrebase User
  User? _userFromFirebaseUser (FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  Future SignInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
