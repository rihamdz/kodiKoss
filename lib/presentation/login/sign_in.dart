import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/login/sign_in_client.dart';
import 'package:kodikoss/presentation/login/sign_in_company.dart';
import 'package:kodikoss/presentation/login/sign_in_pharmacy.dart';

class signinView extends StatefulWidget {
  const signinView({super.key});

  @override
  State<signinView> createState() => _signinViewState();
}

class _signinViewState extends State<signinView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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

            //sign up

            Text(
              'Sign UP',
              style: TextStyle(
                  color: Color(0x695FAAB6),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 2),
            ),

            const SizedBox(height: 30),
            //
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                ' To sign up you have to choose what factor you are “ a company , a pharmacy or a client ',
                style: TextStyle(
                    color: Color(0xff263238),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),

            const SizedBox(height: 30),

// button client
            Center(
              child: InkWell(
                onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signinclient()))
                  ;},
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
                        'client',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // button pharmacy
            Center(
              child: InkWell(
                onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signinpharmacy()))
                  ;},
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
                        'Pharmacy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // button entreprise
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signincompany()),
                  );
                },
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
                        'Company',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                // Image(image: AssetImage("assets/images/im2.png")),
                Text(
                  '                  I’m agree to The Terms of Service and Privacy ',
                  style: TextStyle(
                    color: Color(0xff37474F),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
