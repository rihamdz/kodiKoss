import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/login/my_textfield(1).dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  final mailnmbrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Color(0xff455A64),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(child: Image(image: AssetImage("image/forgotpwd.png"))),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Please enter your email adress to recieve',
                  style: TextStyle(
                    color: Color(0xff37474F),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Center(
                child: Text(
                  ' a verification code .',
                  style: TextStyle(
                    color: Color(0xff37474F),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              //mail or phone
              MyTextField(
                  controller: mailnmbrController,
                  hinText: 'Email / phone number',
                  obscureText: false),
              const SizedBox(height: 20),

              Center(
                child: Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff37474F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
