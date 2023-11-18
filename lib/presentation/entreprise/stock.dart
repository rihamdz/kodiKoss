import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/Clients/editprofile.dart';

class StockView extends StatefulWidget {
  const StockView({super.key});

  @override
  State<StockView> createState() => _StockViewState();
}

enum OS { Entry, Departure }

class _StockViewState extends State<StockView> {
  OS? _os = OS.Entry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image(image: AssetImage("assets/images/Previous.png"))),
            SizedBox(
              width: 15,
            ),
            Text(
              ' Stock track ',
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  int index = 0;
                });
              },
              child: Text("Entry/Departure",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff5FAAB6),
                      fontWeight: FontWeight.w500))),
          TextButton(
              onPressed: () {
                setState(() {
                  int index = 1;
                });
              },
              child: Text("Add An Element",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff5FAAB6),
                      fontWeight: FontWeight.w500))),
        ],
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          "      Transcription",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Radio<OS>(
            activeColor: Color(0xff263238),
            value: OS.Entry,
            groupValue: _os,
            onChanged: (OS? value) {
              setState(() {
                _os = value;
              });
            },
          ),
          Text(
            "Entry",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 110,
          ),
          Radio<OS>(
            activeColor: Color(0xff263238),
            value: OS.Departure,
            groupValue: _os,
            onChanged: (OS? value) {
              setState(() {
                _os = value;
              });
            },
          ),
          Text(
            "Deparature",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          "      Quantity",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
    ])));
  }
}
