import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
        title: Text(
          "Payment",
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
                  const Icon(Icons.check_box, size: 30),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.check_box, size: 30),
                  Container(
                    width: 50.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const Icon(Icons.check_box, size: 30),
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
              const Divider(height: 70, thickness: 3),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Payment Method",
                  style: GoogleFonts.inder(fontSize: 18),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  "Wallet",
                  style: GoogleFonts.inder(fontSize: 16),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  "net banking",
                  style: GoogleFonts.inder(fontSize: 16),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  "cash on delivery",
                  style: GoogleFonts.inder(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.circle_outlined, color: Colors.grey),
                        SizedBox(width: 5),
                        Text("Total:"),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee, size: 20),
                        Text("price"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "PROCEED",
                        style: GoogleFonts.inder(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
