import 'package:flutter/material.dart';

class cardProd extends StatelessWidget {
  const cardProd({
    super.key,
    required this.image,
    required this.nameProduct,
    required this.nameCategorie,
    required this.dose,
  });
  final String image;

  final String nameProduct;
  final String nameCategorie;
  final String dose;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(image: AssetImage(this.image)),
          SizedBox(height: 20),
          Text(
            this.nameProduct,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                this.nameCategorie,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20),
              Text(
                this.dose,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}