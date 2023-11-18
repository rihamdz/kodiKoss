import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';

class settingsView extends StatefulWidget {
  const settingsView({super.key});

  @override
  State<settingsView> createState() => _settingsViewState();
}

class _settingsViewState extends State<settingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 23.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/Previous.png"))),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              ' Settings',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff37474F),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => editProfile()));
                                },
                                child: Image(
                                    image:
                                        AssetImage("assets/images/Menu.png"))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        ' Company name',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff263238),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Text(
                        '   the name #23Z5T',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3263238),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      // line

                      Divider(
                        height: 10,
                        thickness: 1,
                        color: Colors.black12,
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Text(
                        ' Phone number',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff263238),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '   +213 09787R653T4',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3263238),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      // line

                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.black12,
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        ' Company’s Logo',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff263238),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '    . This logo will be used in the pdf rapports',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3263238),
                        ),
                      ),

                      SizedBox(
                        height: 35,
                      ),
                      Center(
                          child: Image(
                              image: AssetImage("assets/images/logocomp.png"))),

                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image(
                                image:
                                    AssetImage("assets/images/resetpwd.png")),
                          ),
                          Text(
                            '    Change your password',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image(
                                image: AssetImage("assets/images/Logout.png")),
                          ),
                          Text(
                            '    LogOut from the acount',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Container(
                          height: 37,
                          width: 379,
                          decoration: BoxDecoration(
                            color: Color(0x695FAAB6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'this account is regestet since 03-01-2019',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]))));
  }
}
