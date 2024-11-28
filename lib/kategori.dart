import "package:flutter/material.dart";

class kategoripage extends StatelessWidget {
  final String data;

  kategoripage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategori"),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Text(data),
              ),
            ],
          )),
    );
  }
}
