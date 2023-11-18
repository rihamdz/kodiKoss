import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';

class ProvidersView extends StatefulWidget {
  const ProvidersView({super.key});

  @override
  State<ProvidersView> createState() => _ProvidersViewState();
}

class _ProvidersViewState extends State<ProvidersView> {
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              width: 15,
                            ),
                            Text(
                              ' Providers ',
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
                              child: Image(image: AssetImage("assets/images/Menu.png"))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 50.0, right: 10, left: 10),
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
                      SizedBox(height: 40),
                      Column(
                        children: [
                          Image(image: AssetImage("assets/images/pics.png")),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                ' CAPPACA REFE ',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '       REFERENCE ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    ' #2345678 ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff5FAAB6),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '       Contact ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    ' Samy ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff5FAAB6),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image(image: AssetImage("assets/images/women.png")),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image(image: AssetImage("assets/images/#112.png")),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Do you have a new provider?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.grey[800],
                            ),
                          ),
                          Center(
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    ' Add it here',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xff5FAAB6),
                                      decoration: TextDecoration.underline,
                                    ),
                                  )))
                        ],
                      ),
                    ]))));
  }
}
