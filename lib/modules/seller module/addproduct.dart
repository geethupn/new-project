import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProductDetails extends StatefulWidget {
  AddProductDetails({super.key});

  @override
  State<AddProductDetails> createState() => _AddProductDetailsState();
}

class _AddProductDetailsState extends State<AddProductDetails> {
  int? _selectedCategoryIndex;

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
          "Product Details",
          style: GoogleFonts.inder(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 200),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Product Name",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Price(Rs)",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Material",
                  hintStyle: GoogleFonts.inder(color: Colors.black38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 15),
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
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      "Add more products",
                      style: GoogleFonts.inder(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Categories Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                "Choose Category",
                style: GoogleFonts.inder(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            // Category Containers
            SizedBox(
              height: 150, // Adjust height as needed
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedCategoryIndex == index ? Colors.blue : Colors.white,
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/category${index + 1}.png'), // Adjust image paths
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Category ${index + 1}',
                          style: GoogleFonts.inder(color: _selectedCategoryIndex == index ? Colors.white : Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Continue Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                if (_selectedCategoryIndex != null) {
                  // Proceed with the selected category
                  print('Selected Category Index: $_selectedCategoryIndex');
                } else {
                  // Show a message to select a category
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please select a category')),
                  );
                }
              },
              child: Text(
                "POST NOW",
                style: GoogleFonts.inder(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
