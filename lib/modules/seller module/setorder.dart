import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SellerOrderDetails extends StatefulWidget {
  
  const SellerOrderDetails({super.key,});

  @override
  State<SellerOrderDetails> createState() => _SellerOrderDetailsState();
}

class _SellerOrderDetailsState extends State<SellerOrderDetails> {
  late String selectedStatus;
  String? selectedItem;
  final List<String> items = ['Pending', 'Processing', 'Cancelled', 'Completed'];

  @override
  void initState() {
    super.initState();
    selectedStatus = 'Pending'; // Initial status
  }

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
          "Order Details",
          style: GoogleFonts.inder(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Status",
                    style: GoogleFonts.inder(color: Colors.black),
                  ),
                  Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: DropdownButton<String>(
                            hint: Text(
                              'Update status',
                              style: GoogleFonts.inder(),
                            ),
                            value: selectedItem,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedItem = newValue;
                              });
                            },
                            items: items.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 10),
              child: Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xff1877F2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    selectedStatus,
                    style: GoogleFonts.inder(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order date",
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    "2024-08-27", // Placeholder for order date
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 200),
              child: Text(
                "Customer Details",
                style: GoogleFonts.inder(color: Colors.black, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    "John Doe", // Placeholder for user name
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Phone Number",
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    "1234567890", // Placeholder for user phone
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email Address",
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    "johndoe@example.com", // Placeholder for user email
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery address",
                    style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "123 Main St",
                        style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        "Apartment 4B",
                        style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        "New York, NY",
                        style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        "10001",
                        style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 240),
              child: Text(
                "Product",
                style: GoogleFonts.inder(color: Colors.black, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Image.network(
                'https://via.placeholder.com/150', // Placeholder for product image
              ),
              title: Text(
                "Sample Product", // Placeholder for product name
                style: GoogleFonts.inder(color: Colors.black, fontSize: 16),
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.currency_rupee_sharp,
                    size: 20,
                    color: Colors.grey,
                  ),
                  Text(
                    "999", // Placeholder for product price
                    style: GoogleFonts.inder(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: const Size(150, 35),
                ),
                onPressed: () {
                  if (selectedItem != null) {
                    // Placeholder for status update action
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Order status updated to $selectedItem')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select a status')),
                    );
                  }
                },
                child: Text(
                  "SET",
                  style: GoogleFonts.inder(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
