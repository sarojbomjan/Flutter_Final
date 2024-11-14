  import 'package:flutter/material.dart';
  import 'package:my_project/components/my_button.dart';
  import 'package:my_project/components/my_textfield.dart';
  import 'package:my_project/components/square_tiles.dart';
  import 'package:my_project/services/auth_service.dart';

  class LoginPage extends StatelessWidget {
    LoginPage({super.key});

    // text editing conntroller
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    // sign user method
    void signUserin() {

    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset: true,   // Automatically resizes the body when the keyboard shows up
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                const SizedBox(
                    height: 50,
                  ),
                  //logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome to BookStore",
                    style: TextStyle(color: Colors.grey[700], fontSize: 30),
                  ),
            
                  const SizedBox(
                    height: 35,
                  ),
            
                  //username textfield
                  MyTextfield(
                    controller: usernameController,
                    hintText: 'Username', 
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  //password textfield
                  MyTextfield(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
            
                  const SizedBox(
                    height: 30,
                  ),
            
                  // forgot password  // row is used to align text at end
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(
                    height: 30,
                  ),
            
                  //sign in button
                  MyButton(
                    onTap: signUserin,
                  ),
            
                  const SizedBox(
                    height: 50,
                  ),
            
                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or continue with",
                            style: TextStyle(color: Colors.grey[700], fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                const SizedBox(height: 50,),
                  // sign in options icons
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button
                      SquareTile(
                        onTap: () async {
                          await AuthService().signInWithGoogle();
                          },
                        imagePath: 'lib/images/google.png'),

                      SizedBox(width: 20,),
                      //twitter button
                      SquareTile(
                        onTap: () {},
                        imagePath: 'lib/images/twitterr.png'),

                      SizedBox(width: 20,),

                      // facebook button
                      SquareTile(
                        onTap: (){},
                        imagePath: 'lib/images/facebook.jpg')
                    ],
                  ),

                  const SizedBox(height: 50,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(color: Colors.grey[700]),),
                      const SizedBox(width: 4,),
                      const Text("Register now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
