import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? selectedImage;
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  
  

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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 100,
                       
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 140, left: 150),
                        child: IconButton(
                          onPressed: () {
                           
                          },
                          icon: Icon(Icons.camera_alt, color: Colors.black, size: 30),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "username",
                        hintStyle: GoogleFonts.inder(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                    child: TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: "phone number",
                        hintStyle: GoogleFonts.inder(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: "email",
                        hintStyle: GoogleFonts.inder(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: TextButton(
                     onPressed: () {
                       
                     },
                      child: Text(
                        "Edit",
                        style: GoogleFonts.inder(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
