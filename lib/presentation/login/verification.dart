import 'package:flutter/material.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
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
              'Verify Your email',
              style: TextStyle(
                color: Color(0xff455A64),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(child: Image(image: AssetImage("image/verf.png"))),
          const SizedBox(height: 50),
          Center(
            child: Text(
              'Please enter the 4 digit code sent ',
              style: TextStyle(
                color: Color(0xff37474F),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Center(
            child: Text(
              'to Sameric112@gmail.com ',
              style: TextStyle(
                color: Color(0xff37474F),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          //
          const SizedBox(height: 40),
          Center(child: Image(image: AssetImage("image/s.png"))),

          const SizedBox(height: 30),

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
                    'verify',
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

          //RESENT CODE

          Center(
            child: Text(
              'Resent code',
              style: TextStyle(
                color: Color(0xff37474F),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
