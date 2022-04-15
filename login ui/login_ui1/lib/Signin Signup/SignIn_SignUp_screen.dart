import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/designCircles.dart';
import 'components/orDivider.dart';
import 'components/signInBox.dart';
import 'components/signUpBox.dart';

class SignInSignUp extends StatefulWidget {
  const SignInSignUp({Key? key}) : super(key: key);

  @override
  State<SignInSignUp> createState() => _SignInSignUpState();
}

class _SignInSignUpState extends State<SignInSignUp> {
  bool isSignIn = true;

  Widget socialLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
            onTap: () {},
            child: const FaIcon(
              FontAwesomeIcons.facebook,
              size: 30,
            )),
        GestureDetector(
            onTap: () {},
            child: const FaIcon(
              FontAwesomeIcons.google,
              size: 30,
            )),
      ],
    );
  }

  Widget signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(fontSize: 15),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isSignIn = !isSignIn;
            });
          },
          child: const Text(
            'SIGN UP',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff06D3A2),
            ),
          ),
        ),
      ],
    );
  }
   Widget signInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: TextStyle(fontSize: 15),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isSignIn = !isSignIn;
            });
          },
          child: const Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff06D3A2),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(children: [
        const GreenCircle(),
        const BlueCircle(),
        Positioned(
          bottom: 0,
          child: Container(
            height: _height * 0.6,
            width: _width,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(blurRadius: 4, color: Colors.black),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: _height * 0.05,
                ),
                isSignIn ? const SignInBox() : const SignUpBox(),
                SizedBox(
                  height: _height * 0.02,
                ),
                const OrDivider(),
                socialLogin(),
                isSignIn? signUpOption() : signInOption(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

// Widget SignInToggle(double width) {
//   return Container();
// }

// Widget SignUpToggle(double width) {
//   return Container();
// }



