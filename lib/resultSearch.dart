import "package:flutter/material.dart";

class resultpage extends StatelessWidget {
  final String data;

  //contructor
  resultpage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Result Search"),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(child: Text(data)),
              ],
            )));
  }
}
