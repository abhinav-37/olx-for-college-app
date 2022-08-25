import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_iete/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olx_iete/widgets/custom_textfield.dart';
import 'package:unicons/unicons.dart';

final _loginFormKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _loginFormKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                "images/png/login_screen_character.png",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(
                  type: TextInputType.emailAddress,
                  validator: ((p0) {}), //TODO: Add Validator for emaail
                  label: "Email",
                  prefix: const Icon(
                    UniconsLine.envelope_alt,
                  ),
                ),
              ),
              // TextFormField(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextField(
                  type: TextInputType.visiblePassword,
                  validator: ((p0) {}), //TODO add Validator for passowrd
                  label: "Password",
                  prefix: const Icon(
                    UniconsLine.user,
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
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
