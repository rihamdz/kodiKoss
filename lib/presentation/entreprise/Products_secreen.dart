import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodikoss/domain/models.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';
import 'package:kodikoss/presentation/entreprise/cardproduct.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                        Image(image: AssetImage("assets/images/Previous.png"))),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Your Products',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you have any reclamation?',
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
                          ' Contact Us',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w200,
                            color: Color(0xff5FAAB6),
                            decoration: TextDecoration.underline,
                          ),
                        )))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
