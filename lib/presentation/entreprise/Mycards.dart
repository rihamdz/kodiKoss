import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  const Mycontainer({
    super.key,
    required this.courseNmae,
    required this.date,
    required this.image,
  });
  final String courseNmae;
  final String date;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x305FAAB6),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Row(
            children: [
              Image(image: AssetImage(this.image)),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    this.courseNmae,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff5B6061),
                    ),
                  ),
                  Text(
                    this.date,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff5B6061),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
