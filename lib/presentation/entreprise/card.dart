import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x305FAAB6),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: Image(image: AssetImage(this.image)),
        title: Text(
          this.name,
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w900,
            color: Color(0xff263238),
          ),
        ),
      ),
    );
  }
}
