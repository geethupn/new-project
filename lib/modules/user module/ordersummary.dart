import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OrderSummary extends StatefulWidget {
 
  OrderSummary({Key? key, }) : super(key: key);

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      //backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
        title: const Text("Order Summary"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.check_box,  size: 30),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.check_box,  size: 30),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.looks_3_outlined,  size: 30),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Address"),
                  Text("Order Summary"),
                  Text("Payment"),
                ],
              ),
              const Divider(
                height: 50,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("User Name", style: GoogleFonts.inder(fontSize: 16)),
                        Text("House No., Building", style: GoogleFonts.inder(fontSize: 16)),
                        Text("Street, Area, Colony", style: GoogleFonts.inder(fontSize: 16)),
                        Text("City", style: GoogleFonts.inder(fontSize: 16)),
                        Text("District", style: GoogleFonts.inder(fontSize: 16)),
                        Text("Pincode", style: GoogleFonts.inder(fontSize: 16)),
                      ],
                    ),
                    
                  ],
                ),
              ),
              const Divider(
                height: 70,
                thickness: 3,
              ),
              Text(
                "Order Summary",
                style: GoogleFonts.inder(fontSize: 18),
              ),
              const Divider(
                height: 30,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Product", style: GoogleFonts.inder(fontSize: 16)),
                        Text("Quantity", style: GoogleFonts.inder(fontSize: 16)),
                        Text("Price", style: GoogleFonts.inder(fontSize: 16)),
                      ],
                    ),
                    
                   
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 200,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        // Action for the CONFIRM button
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("CONFIRM", style: GoogleFonts.inder(fontSize: 18, color: Colors.white)),
                            const SizedBox(width: 8),
                            const Icon(Icons.check, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
