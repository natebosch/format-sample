import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:videoguysrinath/resources/auth_method.dart';
import 'package:videoguysrinath/resources/firebase_repository.dart';
import 'package:videoguysrinath/screens/home_screen.dart';
import 'package:shimmer/shimmer.dart';
import 'package:videoguysrinath/utils/universal_variable.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  final AuthMethods _authMethods = AuthMethods();


  bool isLoginPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UniversalVariables.blackColor,
      body:Stack(
        children:[Center(
          child:loginButton(),
      ),
          isLoginPressed
           ? Center(
            child: CircularProgressIndicator(),
          )
              :Container(

          )
    ],
      ),
    );
  }

  Widget loginButton() {
    return Shimmer.fromColors(
    baseColor: Colors.white,
        highlightColor: UniversalVariables.senderColor,
        child:FlatButton(
      padding: EdgeInsets.all(35),
      child: Text(
        "LOGIN",
        style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.w900, letterSpacing: 1.2),
      ),
      onPressed: () => performLogin(),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    
  }

  void performLogin() {
    print("trying to perform login");

    setState(() {
      isLoginPressed = true;
    });
    _authMethods.signIn().then((FirebaseUser user) {
      print("something");
      if (user != null) {
        authenticateUser(user);
      } else {
        print("There was an error");
      }
    });
  }

  void authenticateUser(FirebaseUser user) {
    _authMethods.authenticateUser(user).then((isNewUser) {

      setState(() {
        isLoginPressed = false;
      });
      if (isNewUser) {
        _authMethods.addDataToDb(user).then((value) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
        });
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
      }
    });
  }
}