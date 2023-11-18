import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';

class ordersview extends StatefulWidget {
  const ordersview({super.key});

  @override
  State<ordersview> createState() => _ordersviewState();
}

class _ordersviewState extends State<ordersview> {
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //APPBAR

            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                     onTap: () {
                        Navigator.pop(context);
                      },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child:
                          Image(image: AssetImage("assets/images/Previous.png")),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Your Orders  ',
                      style: TextStyle(
                        color: Color(0xff37474F),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: InkWell(
                      onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => editProfile()));
                                },
                      child: Image(image: AssetImage("assets/images/Menu.png"))),
                  ),
                ],
              ),
            ),
            ////////////////////////////
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
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
            const SizedBox(height: 20),
            Center(child: Image(image: AssetImage("assets/images/bank.png"))),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'Your last order',
                style: TextStyle(
                  color: Color(0xff455A64),
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  shadows: [
                    Shadow(
                      color: Color(0x2037474F),
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("assets/images/ordr.png"),
          ],
        ),
      ),
    );
  }
}
