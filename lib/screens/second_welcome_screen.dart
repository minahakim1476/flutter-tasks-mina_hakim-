
import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/widgets/my_sized_box.dart';
import 'package:myapp/widgets/my_text.dart';


class SecondWelcomeScreen extends StatelessWidget {
  const SecondWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF141414),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/image.png',
                    height: 400,
                    width: 400,
                    fit: BoxFit.cover, 
                  ),
                  const Text(
                    'MONSTER LIVESCORE',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontFamily: 'Teko',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  mySizedBox(height: 16),
                  SizedBox(
                    width: 311,
                    child: myText(
                      'We’d like to check that your preferences and details are accurate.',
                    ),
                  ),
                  mySizedBox(height: 16),
                  ElevatedButton( 
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const LoginScreen(); // Consider replacing with your actual next screen
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF8FE11),
                      fixedSize: const Size(311, 48),
                    ), 
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  mySizedBox(height: 16),
            TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const SignupScreen(); // Consider replacing with your actual next screen
                    }));
                  },
                  style: TextButton.styleFrom(
                    fixedSize: const Size(311, 48),
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    side: const BorderSide(color: Color(0xFFF8FE11)),
                  ),
                  child: const Text('Sign up for Monster Livescore'),
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
