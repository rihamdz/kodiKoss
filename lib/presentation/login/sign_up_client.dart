import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/main_view.dart';
import 'package:kodikoss/presentation/login/my_textfield(1).dart';
import 'package:kodikoss/presentation/login/sign_in_client.dart';

class signupCliet extends StatefulWidget {
  const signupCliet({super.key});

  @override
  State<signupCliet> createState() => _signupClietState();
}

class _signupClietState extends State<signupCliet> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final mailnmbrController = TextEditingController();
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 10),
          //log
          Row(
            children: [
              Image(image: AssetImage("assets/images/logo.png")),
              Text(
                'Welcome to ',
                style: TextStyle(
                  color: Color(0xff37474F),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'CureLink .',
                style: TextStyle(
                  color: Color(0x695FAAB6),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),

          //dear pharmacy

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Dear Client,',
              style: TextStyle(
                color: Color(0xff263238),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // sign up

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Sign UP',
              style: TextStyle(
                color: Color(0x695FAAB6),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),

          const SizedBox(height: 20),

          const SizedBox(height: 20),

          //mail or phone
          MyTextField(
              controller: mailnmbrController,
              hinText: 'Email / phone number',
              obscureText: false),
          const SizedBox(height: 20),

          //password
          MyTextField(
              controller: passwordController,
              hinText: 'password',
              obscureText: true),

          const SizedBox(height: 20),

          // button create account
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  color: Color(0x695FAAB6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          // SIGN IN
          Row(
            children: [
              Center(
                child: Text(
                  '                   Do you have an account ?',
                  style: TextStyle(
                    color: Color(0xff37474F),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signinclient()));
                },
                child: Text(
                  ' Sign In',
                  style: TextStyle(
                    color: Color(0x695FAAB6),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
