import 'package:flutter/material.dart';

class SignInBox extends StatefulWidget {
  const SignInBox({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInBox> createState() => _SignInBoxState();
}

class _SignInBoxState extends State<SignInBox> {
   bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      // height: _height * 0.4,
      width: _width * 0.9,
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: const Color(0xffF1FDFF),
            color: const Color.fromARGB(255, 193, 231, 237),
          ),
          child: TextFormField(
            onChanged: (value) {},
            style: const TextStyle(
              color: Colors.white,
            ),
            cursorColor: Colors.red,
            onSaved: (value) {
              // userMail = value;
            },
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return "This field can not be empty";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: IconButton(
                icon: Icon(
                  Icons.mail,
                  color: Color(0xff0D97C2),
                ),
                onPressed: null,
              ),
              hintText: 'Enter Your Email',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
            // controller: emailTextController,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: const Color(0xffF1FDFF),
            color: const Color.fromARGB(255, 193, 231, 237),
          ),
          child: TextFormField(
            onChanged: (value) {},
            obscureText: _obscureText,
            cursorColor: Colors.red,
            key: const ValueKey('Password'),
            onSaved: (value) {
              // userMail = value;
            },
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.length < 6) {
                return "Password too short";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: const IconButton(
                icon: Icon(
                  Icons.key,
                  color: Color(0xff0D97C2),
                ),
                onPressed: (null),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xff0D97C2),
                ),
                onPressed: () {
                  _toggle();
                },
              ),
              hintText: 'Password',
              hintStyle: const TextStyle(
                // color: Colors.grey,
                color: Colors.black54,
              ),
            ),
            // controller: passwordTextController,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(''),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: _width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff06D3A2),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Sign In',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ]),
    );
  }
}
