import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/login/my_textfield(1).dart';

class newpwd extends StatefulWidget {
  const newpwd({super.key});

  @override
  State<newpwd> createState() => _newpwdState();
}

class _newpwdState extends State<newpwd> {
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              'Create new password',
              style: TextStyle(
                color: Color(0xff455A64),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(child: Image(image: AssetImage("image/newpwd.png"))),
          const SizedBox(height: 50),
          Center(
            child: Text(
              'Your new password must be ',
              style: TextStyle(
                color: Color(0xff37474F),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Center(
            child: Text(
              'diffrent from the old one . ',
              style: TextStyle(
                color: Color(0xff37474F),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          const SizedBox(height: 20),

          //password
          MyTextField(
              controller: passwordController,
              hinText: 'password',
              obscureText: true),

          const SizedBox(height: 20),

          //confirm password
          MyTextField(
              controller: confirmpasswordController,
              hinText: 'Confirme password',
              obscureText: true),

          // button
          Center(
            child: Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0x695FAAB6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'save  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
