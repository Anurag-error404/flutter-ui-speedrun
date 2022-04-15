import 'package:flutter/material.dart';

class SignUpBox extends StatelessWidget {
  const SignUpBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width * 0.9,

      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 193, 231, 237),
          ),
          child: TextFormField(
            onChanged: (value) {},

            style: const TextStyle(
              color: Colors.white,
            ),

            cursorColor: Colors.red,

            onSaved: (value) {
              // userPhoneNumber = value;
            },

            keyboardType: TextInputType.phone,

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
                  Icons.phone_android,
                  color: Color(0xff0D97C2),
                ),
                onPressed: null,
              ),
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                // color: Colors.grey,
                color: Colors.black54,

              ),
            ),

            // controller: phoneNumberTextController,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
      width: _width * 0.9,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff06D3A2),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text('Send OTP',
              style: TextStyle(color: Colors.black, fontSize: 20),
            
            ),
          ),
        )
      ]),
    );
  }
}
