import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';
import 'package:kodikoss/presentation/entreprise/Products_secreen.dart';
import 'package:kodikoss/presentation/entreprise/Providers.dart';
import 'package:kodikoss/presentation/entreprise/emplacement.dart';
import 'package:kodikoss/presentation/entreprise/report_analyse.dart';
import 'package:kodikoss/presentation/entreprise/stock.dart';
import 'package:kodikoss/presentation/entreprise/sttings.dart';

class mainView extends StatelessWidget {
  const mainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage("assets/images/logo.png")),
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
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => editProfile()));
                      },
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => editProfile()));
                          },
                          child: Image(
                              image: AssetImage("assets/images/Menu.png")))),
                ],
              ),
              Text(
                'An overview of your company',
                style: TextStyle(
                  color: Color.fromARGB(255, 72, 69, 69),
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 15),
              Image(image: AssetImage("assets/images/text.png")),
              SizedBox(height: 20),
              Image(image: AssetImage("assets/images/cha.png")),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductsView()));
                      },
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0x305FAAB6),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/Product.png")),
                              SizedBox(width: 8),
                              Text(
                                'Products',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => reportView()));
                      },
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0x305FAAB6),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/Analyze.png")),
                              SizedBox(width: 8),
                              Text(
                                'Analyze',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: 13),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StockView()),
                      ),
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0x305FAAB6),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/Stocks.png")),
                              SizedBox(width: 8),
                              Text(
                                'Stock',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProvidersView()),
                      ),
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0x305FAAB6),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/Supplier.png")),
                              SizedBox(width: 8),
                              Text(
                                'Providers',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: 13),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => settingsView()),
                      ),
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0x305FAAB6),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage("assets/images/Settings.png")),
                              SizedBox(width: 8),
                              Text(
                                'Settings',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => emplacementView()),
                      ),
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0x305FAAB6),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image(
                                  image: AssetImage("assets/images/Info.png")),
                              SizedBox(width: 8),
                              Text(
                                'emplacement',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff263238),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '          Do you have any question?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 26, 25, 25),
                      ),
                    ),
                    Center(
                        child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Ask us',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff5FAAB6),
                                decoration: TextDecoration.underline,
                              ),
                            )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
