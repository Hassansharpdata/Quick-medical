import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 65, 151),
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "data:image/png;base64,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", // Replace with profile image URL
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi, Ali Siraj",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("Welcome to Quick Medical Store",
                    style: TextStyle(fontSize: 12, color: Colors.white70)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Handle cart
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search Medicine & Healthcare products",
                    hintStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    prefixIcon: Icon(Icons.search, color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildCategoryItem("Dental", Colors.pinkAccent),
                        _buildCategoryItem("Wellness", Colors.green),
                        _buildCategoryItem("Homeo", Colors.orange),
                        _buildCategoryItem("Eye care", Colors.blueAccent),
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Save extra on every order",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Etiam mollis metus non faucibus.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            "data:image/jpeg;base64,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", // Replace with banner image URL
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deals of the Day",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomeScreen');
                          },
                          child: Text("More"),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        _buildDealItem(),
                        SizedBox(width: 16),
                        _buildDealItem(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildDealItem() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyor9ugn4heE0yJxyC0GS6qQvXx5wIGyDozw&s", // Replace with product image URL
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text("Accu-check Active Test Strip",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text("Rs.112", style: TextStyle(color: Colors.blueAccent)),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                SizedBox(width: 4),
                Text("2.0"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
