import 'package:flutter/material.dart';
import 'responsivelayout.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Resume",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ResponsiveLayout.isSmallScreen(context)
              ? Container(
            child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Card(
                      color: Colors.grey.withOpacity(0.5),
                      child: Image.network(
                          "https://i.ibb.co/4YN9xdr/CV-Md-Mannan-Miah.jpg"),
                    )),
              ],
            ),
          )
              : Container(
            child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Card(
                      color: Colors.grey.withOpacity(0.5),
                      child: Image.network(
                          "https://i.ibb.co/4YN9xdr/CV-Md-Mannan-Miah.jpg"),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}