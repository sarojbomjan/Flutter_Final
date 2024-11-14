import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/loginpage.dart';

import 'home_page.dart';
 

 // this page is to check if user is signed in or not 
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          // user is logged in
          if(snapshot.hasData){
            return HomePage();
          }

          // user is not logged in
          else{
            return LoginPage();
          }
        }
        ),
    );
  }
}