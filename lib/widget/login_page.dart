import 'package:flutter/material.dart';
import 'package:flutter_login_test/widget/button.dart';
import 'package:flutter_login_test/widget/logo.dart';

class MainLoginPage extends StatelessWidget {
  const MainLoginPage();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: const DecorationImage(
            image: const AssetImage("images/main-background.jpg"),
            fit: BoxFit.cover),
      ),
      // New Child
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Logo(),
              const Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: const Text(
                  "Enjoy Your Trip\nTo Iran",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                txtColor: Colors.white,
                bgColor: Color(0xffe17055),
                callback: () {
                  print("Sign Up!");
                },
                btnText: "Sign Up",
              ),
              AppButton(
                bgColor: Colors.white,
                txtColor: Color(0xffe17055),
                callback: () {
                  print("Login!");
                },
                btnText: "Login",
              ),
              const Padding(padding: EdgeInsets.only(bottom: 24))
            ],
          ),
        ),
      ),
    );
  }
}
