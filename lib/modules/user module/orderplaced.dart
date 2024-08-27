import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: IconButton(
            onPressed: () {
             
            },
            icon: const Icon(Icons.home, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 50, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              "Order Confirmed",
              style: GoogleFonts.inder(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Thank you for your order.\nPlease keep track of your order.",
              textAlign: TextAlign.center,
              style: GoogleFonts.inder(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 35),
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                
              },
              child: Text(
                "Continue Shopping",
                //style: GoogleFonts.inder(color: kPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
