import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';

class emplacementView extends StatefulWidget {
  const emplacementView({super.key});

  @override
  State<emplacementView> createState() => _emplacementViewState();
}

class _emplacementViewState extends State<emplacementView> {
  TextEditingController textEditingController = TextEditingController();
  final List<Map<String, dynamic>> allUsers = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Aragon", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Cavers", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
  ];
  initState() {
    foundUsers = allUsers;
    super.initState();
  }

  List<Map<String, dynamic>> foundUsers = [];
  void filter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = allUsers;
    } else {
      results = allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                          image: AssetImage("assets/images/Previous.png"))),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    ' Report / Analyzing ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff37474F),
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
                      child:
                          Image(image: AssetImage("assets/images/Menu.png"))),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 10, left: 10),
                child: TextField(
                  onChanged: (value) => filter(value),
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff5B6061),
                    ),
                    suffixIcon: IconButton(
                      icon: const ImageIcon(
                        AssetImage("assets/images/mecro.png"),
                        color: Color(0xff5B6061),
                      ),
                      onPressed: () {
                        setState(() {
                          textEditingController.clear();
                          foundUsers = allUsers;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Color(0X305FAAB6),
                    hintText: 'Search...',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(image: AssetImage("assets/images/map.png")),
            SizedBox(
              height: 20,
            ),
            Text(
              ' Including these factories, three new specialized units have been commissioned as part of the development plan. These factories, built according to international standards of the pharmaceutical industry, are located in El Harrach II (dry forms) Cherchell, and Constantine',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 365,
              height: 240,
              decoration: BoxDecoration(
                color: Color(0x305FAAB6),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ' Orders Track',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Color(0x2037474F),
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                        ),
                      ],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/Location.png")),
                      Column(
                        children: [
                          Text(
                            'Ibn zaid pharmacy',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '322 RUE Ali Mendjli',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff979797),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child:
                            Image(image: AssetImage("assets/images/pont.png")),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/Location.png")),
                      Column(
                        children: [
                          Text(
                            'Chell pharmacy',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '42 RUE Mouloud Feraoun',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff979797),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child:
                            Image(image: AssetImage("assets/images/pont.png")),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/images/Location.png")),
                      Column(
                        children: [
                          Text(
                            'Zighoud oharmacy pharmacy',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child:
                            Image(image: AssetImage("assets/images/pont.png")),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
