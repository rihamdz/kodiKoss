import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/login/sign_in.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xffC3C3C3),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 50),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Cora Richardson',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 100, 97, 97),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundImage:
                                  AssetImage('assets/images/c1.png'),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Text(
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 82,
                    margin: const EdgeInsets.only(left: 27.0, right: 27),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(08),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.help_outline_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Help & Support"),
                          ],
                        ),
                        Row(children: const [
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.contact_support,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Contact us"),
                        ]),
                        Row(children: [
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.privacy_tip,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(onTap: null, child: Text("Privacy policy")),
                        ]),
                      ],
                    )),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signinView()));
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
                            'Log Out',
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
                const SizedBox(
                  height: 80,
                ),
              ]),
        ),
      ),
    );
  }
}
