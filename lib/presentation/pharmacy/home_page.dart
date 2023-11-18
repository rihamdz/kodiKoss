import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';

class homepagephar extends StatefulWidget {
  const homepagephar({super.key});

  @override
  State<homepagephar> createState() => _homepagepharState();
}

class _homepagepharState extends State<homepagephar> {
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
            //log
            const SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Image(image: AssetImage("assets/images/logo.png")),
                  ),
                  Text(
                    'Welcome to ',
                    style: TextStyle(
                      color: Color(0xff37474F),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'CureLink .',
                    style: TextStyle(
                      color: Color(0x695FAAB6),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => editProfile()));
                                },
                    child: Image(image: AssetImage("assets/images/Menu.png"))),
                ],
              ),
            ),

            const SizedBox(height: 20),

// qr code
            Center(child: Image(image: AssetImage("assets/images/QR.png"))),

            const SizedBox(height: 20),
            Center(
              child: Text(
                'scan the Qr Code to check ',
                style: TextStyle(
                  color: Color(0xff37474F),
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                ' your stock track .',
                style: TextStyle(
                  color: Color(0xff37474F),
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
