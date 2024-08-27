import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SellerOrderPage extends StatelessWidget {
  const SellerOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "Orders",
            style: GoogleFonts.inder(color: Colors.white),
          ),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Cancelled'),
              Tab(text: 'Pending'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrdersTab(status: 'All'),
            OrdersTab(status: 'Cancelled'),
            OrdersTab(status: 'Pending'),
            OrdersTab(status: 'Completed'),
          ],
        ),
      ),
    );
  }
}

class OrdersTab extends StatelessWidget {
  final String status;

  const OrdersTab({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(17),
              ),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(Icons.search),
              hintText: "Search for an order",
              hintStyle: GoogleFonts.inder(color: Colors.grey),
            ),
          ),
        ),
        Text(
          "$status Orders",
          style: GoogleFonts.inder(color: Colors.black),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10, // Example item count
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigation to order details
                },
                child: ListTile(
                  leading: const Icon(Icons.notes),
                  title: Text(
                    'Product Name ',
                    style: GoogleFonts.inder(color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order date: 2024-08-27",
                        style: GoogleFonts.inder(color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Text(
                    'Order ID ',
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 12),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
