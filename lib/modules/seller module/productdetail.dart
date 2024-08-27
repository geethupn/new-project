import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProductPage extends StatefulWidget {
  AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
           
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
        title: Text(
          "Product Details",
          style: GoogleFonts.inder(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 200),
              child: CircleAvatar(
                radius: 50,
                
                child: IconButton(
                  onPressed: (){

                  },
                  icon: const Icon(Icons.camera_alt),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Product Name",
                  hintStyle: GoogleFonts.inder(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
              child: TextFormField(
               
                decoration: InputDecoration(
                  hintText: "Product Details",
                  hintStyle: GoogleFonts.inder(color: Colors.grey),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 40),
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Price (Rs)",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 40),
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Brand",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 40),
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Material",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 40),
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Method of production",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddProductPage()),
                  );
                },
                child: Row(
                  children: [
                    const Icon(Icons.add, ),
                    Text(
                      "Add more products",
                      style: GoogleFonts.inder()
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 220),
              child: SizedBox(
                height: 30,
                child: Text(
                  "Category",
                  style: GoogleFonts.inder(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            4,
                            (index) => GestureDetector(
                              onTap: () {
                               
                              },
                              child: Container(
                                width: 50,
                                height: 60,
                                
                                child: Column(
                                  children: [
                                    Image.asset("assets/wooden-table-with-blurred-restaurant-scene.jpg"
                                        ),
                                    Text(
                                        "title")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      // Code to navigate or perform any action on button press
                    },
                    child: Text(
                      "CONTINUE ADD PRODUCT",
                      style: GoogleFonts.inder(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


