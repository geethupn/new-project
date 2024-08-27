import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cancel extends StatelessWidget {
  Cancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
        title: Center(
          child: Text(
            "My Order",
            style: GoogleFonts.inder(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
          children: [
            // Display the image
            Image.asset(
              "assets/wooden-table-with-blurred-restaurant-scene.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10), // Space between image and text content
            // Product name
            Text(
              'Product Name',
              style: GoogleFonts.inder(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Row(
              children: [
                const Icon(Icons.currency_rupee, size: 20),
                Text(
                  'Product Price',
                  style: GoogleFonts.inder(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Order Details",
                style: GoogleFonts.inder(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10), // Space between section title and list tiles
            // Order details with added gap between delivery date and text
            ListTile(
              leading: Text(
                "Order Id",
                style: GoogleFonts.inder(fontSize: 16, color: Colors.grey),
              ),
              trailing: Text(
                'Order ID Value',
                style: GoogleFonts.inder(fontSize: 16, color: Colors.grey),
              ),
            ),
            ListTile(
              leading: Text(
                "Delivery Date",
                style: GoogleFonts.inder(fontSize: 16, color: Colors.grey),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(left: 30.0), // Increase the left padding
                child: Text(
                  'Delivery Date ',
                  style: GoogleFonts.inder(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between order details and button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Custom background color
                  fixedSize: const Size(150, 35),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
                onPressed: () {
                  // Define the action for the button
                },
                child: Text(
                  "Cancel Order",
                  style: GoogleFonts.inder(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
