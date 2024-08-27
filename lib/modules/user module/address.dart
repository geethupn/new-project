import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AddressPage extends StatefulWidget {
  AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _pincodeController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _distController = TextEditingController();
  final _houseController = TextEditingController();
  final _streetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
        title: Text(
          "Add delivery address",
          style: GoogleFonts.inder(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.looks_one,  size: 30),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.looks_two_outlined,
                      //color: kPrimaryColor, size: 30),
                  ),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.looks_3_outlined,
                      //color: kPrimaryColor, size: 30),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Address"),
                  Text("Order Summary"),
                  Text("Payment")
                ],
              ),
              const Divider(
                height: 50,
                thickness: 3,
              ),
              Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    cursorHeight: 20,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      fillColor: Colors.white,
                      //fillColor: bgColor,
                      filled: true,
                      hintText: "First Name (Required)",
                      hintStyle: GoogleFonts.inder(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _phoneController,
                    cursorHeight: 20,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(17),
                      ),
                       fillColor: Colors.white,
                      //fillColor: bgColor,
                      filled: true,
                      hintText: "Phone Number (Required)",
                      hintStyle: GoogleFonts.inder(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: _pincodeController,
                          cursorHeight: 20,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(17),
                            ),
                             fillColor: Colors.white,
                            //fillColor: bgColor,
                            filled: true,
                            hintText: "Pincode (Required)",
                            hintStyle:
                                GoogleFonts.inder(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: _distController,
                          cursorHeight: 20,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(17),
                            ),
                             fillColor: Colors.white,
                            //fillColor: bgColor,
                            filled: true,
                            hintText: "District (Required)",
                            hintStyle:
                                GoogleFonts.inder(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: _cityController,
                          cursorHeight: 20,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(17),
                            ),
                             fillColor: Colors.white,
                            //fillColor: bgColor,
                            filled: true,
                            hintText: "City (Required)",
                            hintStyle:
                                GoogleFonts.inder(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 170,
                        child: TextFormField(
                          controller: _stateController,
                          cursorHeight: 20,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(17),
                            ),
                             fillColor: Colors.white,
                            //fillColor: bgColor,
                            filled: true,
                            hintText: "State (Required)",
                            hintStyle:
                                GoogleFonts.inder(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _houseController,
                    cursorHeight: 20,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(17),
                      ),
                       fillColor: Colors.white,
                      //fillColor: bgColor,
                      filled: true,
                      hintText: "House No., Building name (Required)",
                      hintStyle: GoogleFonts.inder(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _streetController,
                    cursorHeight: 20,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(17),
                      ),
                       fillColor: Colors.white,
                      //fillColor: bgColor,
                      filled: true,
                      hintText: "Road name, Area, Colony (Required)",
                      hintStyle: GoogleFonts.inder(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        // Action for SAVE ADDRESS button
                      },
                      child: Text(
                        "SAVE ADDRESS",
                        style: GoogleFonts.inder(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
