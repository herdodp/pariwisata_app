import 'package:flutter/material.dart';
import 'package:pariwisataapp/allcategory.dart';
import 'package:pariwisataapp/detail.dart';
import 'package:pariwisataapp/kategori.dart';
import 'package:pariwisataapp/resultSearch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  final TextEditingController textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //open judul besar
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 5, left: 20, right: 20),
              child: Text("Jelahah",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ),
            //close judul besar

            //open judul kecil
            Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 10),
              child: Text("Temukan tempat favoritmu disini",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            //close judul kecil

            //open kolom search
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: TextField(
                          controller: textcontroller,
                          decoration: InputDecoration(
                              labelText: "Cari Tempat Wisata",
                              hintText: "Masukkan nama tempat wisata",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 20),
                    child: ElevatedButton(
                        child: Text("Cari"),
                        onPressed: () {
                          String texttake = textcontroller.text;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    resultpage(data: texttake)),
                          );
                        }),
                  ),
                ],
              ),
            ),

            //close kolom search

            //open judul kategori
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
              child: Row(
                children: [
                  Container(
                    child: Text("Kategori",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 130),
                    child: TextButton(
                      child: Text(
                        "Lihat semua",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => allkategori()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            //close judul kategori

            //open kategori
            Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //open card mountain
                      Container(
                        child: InkWell(
                            onTap: () {
                              String data = "mountain";
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        kategoripage(data: data)),
                              );
                            },
                            child: Card(
                                elevation: 5,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage("mountain.jpg"),
                                          )),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text("Pegunungan",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ))),
                      ),
                      //close card mountain

                      //open card beach
                      Container(
                        child: InkWell(
                            onTap: () {
                              String data = 'beach';
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        kategoripage(data: data)),
                              );
                            },
                            child: Card(
                                elevation: 5,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage("beach.jpg"),
                                          )),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text("Pantai",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ))),
                      ),
                      //close card beach

                      //open card danau
                      Container(
                        child: InkWell(
                            onTap: () {
                              String data = "danau";
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        kategoripage(data: data)),
                              );
                            },
                            child: Card(
                                elevation: 5,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage("danau.jpg"),
                                          )),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text("Danau",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ))),
                      ),
                      //close card danau

                      //open card city park
                      Container(
                        child: InkWell(
                            onTap: () {
                              String data = "citypark";
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        kategoripage(data: data)),
                              );
                            },
                            child: Card(
                                elevation: 5,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage("citypark.jpg"),
                                          )),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text("Taman Kota",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ))),
                      ),
                      //close card city park
                    ],
                  ),
                )),
            //close kategori

            //open judul pilihan
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Text("Pilihan Kami",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            //close judul pilihan




            //open card tempat wisata
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: InkWell(
                            onTap: () {
                              String data = "contoh1";
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          detailpage(data: data)));
                            },
                            child: Card(
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage("mountain.jpg"),
                                      fit: BoxFit.cover,
                                      )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                    child: Text("Pantai Melayu",textAlign: TextAlign.center ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ))),
                  ],
                ),
              ),
            ),
            //close card tempat wisata





          ],
        ),
      ),
    );
  }
}
