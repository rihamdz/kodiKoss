import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kodikoss/domain/models.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';
import 'package:kodikoss/presentation/entreprise/cardproduct.dart';
import 'package:kodikoss/presentation/pharmacy/orders.dart';
import 'package:kodikoss/presentation/pharmacy/rd.dart';

class mainpharmacy extends StatefulWidget {
  const mainpharmacy({super.key});

  @override
  State<mainpharmacy> createState() => _mainpharmacyState();
}

class _mainpharmacyState extends State<mainpharmacy> {
  var _selectedTab = _SelectedTab.home;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      i == 0
          ? Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mainpharmacy()),
            )
          : i == 1
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ordersview()))
              : Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWidget()));
    });
  }
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
  final List<Product> Prodocts = [
    Product(
        image: "assets/images/Charbonel +.png",
        nameProduct: 'Charbonel +',
        nameCategorie: 'Kétotifiène',
        dose: '540 ut'),
    Product(
        image: "assets/images/HUMEX.png",
        nameProduct: 'HUMEX',
        nameCategorie: 'ACylotine',
        dose: '300 ut'),
    Product(
        image: "assets/images/CardioAsperine.png",
        nameProduct: 'CardioAsperine',
        nameCategorie: 'cétonyle',
        dose: '920 ut'),
    Product(
        image: "assets/images/Colperin.png",
        nameProduct: 'Colperin',
        nameCategorie: 'Aminoacyl',
        dose: '342 ut'),
    Product(
        image: "assets/images/Hebatadoron.png",
        nameProduct: 'Hetabadoron',
        nameCategorie: 'Kétotifène',
        dose: '120 ut'),
    Product(
        image: "assets/images/Pissenlit.png",
        nameProduct: 'Pissenlit',
        nameCategorie: 'Kétotifène',
        dose: '650 ut'),
  ];
  int currentCourseIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Image(
                          image: AssetImage("assets/images/Previous.png")),
                    ),
                    Center(
                      child: Text(
                        ' Our Products ',
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
                          child: Image(
                              image: AssetImage("assets/images/Menu.png"))),
                    ),
                  ],
                ),
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
            ListView.builder(
              itemCount: Prodocts.length,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              //hna ida habiti tbadli kifh tscroller les produits
              itemBuilder: (context, index) {
                Product current = Prodocts[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: cardProd(
                    image: current.image,
                    nameProduct: current.nameProduct,
                    nameCategorie: current.nameCategorie,
                    dose: current.dose,
                  ),
                );
              },
            ),
          ]),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: DotNavigationBar(
            margin: EdgeInsets.only(left: 10, right: 10),
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            splashBorderRadius: 50,
            // enableFloatingNavBar: false,
            onTap: _handleIndexChanged,
            items: [
              /// Likes
              DotNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home.png")),
                selectedColor: Color(0xff5FAAB6),
              ),

              /// Search
              DotNavigationBarItem(
                icon: Icon(Icons.filter_1),
                selectedColor: Color(0xff5FAAB6),
              ),

              /// Profile
              DotNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Pill.png")),
                selectedColor: Color(0xff5FAAB6),
              ),
            ],
          ),
        ));
  }
}

enum _SelectedTab { home, favorite, search }
