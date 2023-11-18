import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/login/my_textfield(1).dart';
import 'package:kodikoss/presentation/login/sign_in_company.dart';
import 'package:kodikoss/presentation/login/sign_up_pharmacy.dart';
import 'package:kodikoss/presentation/Clients/main_view.dart';
import 'package:kodikoss/presentation/pharmacy/home_page.dart';
import 'package:kodikoss/presentation/pharmacy/mainpharmacy.dart';
import 'package:kodikoss/presentation/pharmacy/orders.dart';

class signinpharmacy extends StatefulWidget {
  const signinpharmacy({super.key});

  @override
  State<signinpharmacy> createState() => _signupcompanyState();
}

class _signupcompanyState extends State<signinpharmacy> {
  final passwordController = TextEditingController();
  final mailnmbrController = TextEditingController();

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

          //dear client
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Dear pharmacy,',
              style: TextStyle(
                color: Color(0xff263238),
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // sign in

          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              'Sign IN',
              style: TextStyle(
                  color: Color(0x695FAAB6),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 2),
            ),
          ),

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
Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => mainpharmacy()));
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
                      'Sign In',
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
          const SizedBox(height: 20),

          // SIGN IN
          Row(
            children: [
              Center(
                child: Text(
                  '              Do you have already account? ?',
                  style: TextStyle(
                    color: Color(0xff37474F),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signuppharmacy()),
                  );
                },
                child: Text(
                  ' Sign UP',
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
