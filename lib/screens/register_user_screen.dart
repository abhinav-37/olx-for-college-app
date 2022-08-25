import 'package:flutter/material.dart';
import 'package:olx_iete/constants.dart';
import 'package:olx_iete/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'login',
            child: Image.asset(
              "images/png/login_screen_character.png",
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.orangeColor,
                  animationDuration: const Duration(milliseconds: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.orangeColor,
                  animationDuration: const Duration(milliseconds: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
