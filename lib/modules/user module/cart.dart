import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Back arrow icon
          onPressed: () {
            Navigator.pop(context); // Navigates back when pressed
          },
        ),
        title: Center(child: Text('Cart')), // Heading at the top center
        backgroundColor: Colors.amber,
        elevation: 0, // Remove shadow under the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container for the cart item
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Selection box (e.g., Checkbox)
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Checkbox(
                      value: false, // Default value
                      onChanged: (bool? newValue) {
                        // Handle selection
                      },
                    ),
                  ),

                  // Item Image
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Image.asset(
                      "assets/carrot.jpg", // Placeholder image URL
                      width: 100,
                      height: 100,
                    ),
                  ),

                  // Item Details (Mixture and Price)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mixture',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '\$50.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 16), // Space between price and quantity control
                        // Align the quantity control to the left
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 120, // Reduced width of the container
                            padding: EdgeInsets.symmetric(vertical: 4), // Smaller padding
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjusts the spacing inside
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove, size: 16), // Smaller icon size
                                  onPressed: () {
                                    // Decrease quantity
                                  },
                                ),
                                Text('1', style: TextStyle(fontSize: 16)), // Quantity indicator with smaller text
                                IconButton(
                                  icon: Icon(Icons.add, size: 16), // Smaller icon size
                                  onPressed: () {
                                    // Increase quantity
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Recently Viewed",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Container for the recently viewed item
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Selection box (e.g., Checkbox)
                  

                  // Item Image
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Image.asset(
                      "assets/carrot.jpg", // Placeholder image URL
                      width: 100,
                      height: 100,
                    ),
                  ),

                  // Item Details (Mixture and Price)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mixture',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '\$50.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 16), // Space between price and button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              child: Text("Add to Cart"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Center(
              child: ElevatedButton(onPressed: (){
              
              }, child: Text("buy now")),
            )
          ],
      
        ),
      ),
      
    );
  }
}


