import "package:flutter/material.dart";

class detailpage extends StatelessWidget {
  final String data;

  //costructor
  detailpage({required this.data});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              child: Text(data),
            ),

          ],
        ),
      ),
    );
  }
}
