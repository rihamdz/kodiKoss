import 'package:flutter/material.dart';

class YpourProductView extends StatefulWidget {
  const YpourProductView({super.key});

  @override
  State<YpourProductView> createState() => _YpourProductViewState();
}

class _YpourProductViewState extends State<YpourProductView> {
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
                            Image(image: AssetImage("assets/images/Menu.png")),
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
                      SizedBox(height: 35),
                      Center(
                        child: Text(
                          'BROWSE OUR PRODUCTS BY THERAPEUTIC CLASSES',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Center(child: Image(image: AssetImage("assets/images/mad.png"))),
                    ]))));
  }
}
