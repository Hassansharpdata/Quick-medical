import 'package:flutter/material.dart';
import 'cart.dart';
import 'home.dart';
void main() {
  runApp(MyApp());
}

// Screens

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ProfileScreen(),
        '/home': (context) => HomeScreen(),
        '/cart': (context) => CartScreen(),
      },
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 2; // Default to Profile

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Navigate to specific routes based on the index
    switch (index) {
      case 0: // Home
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1: // Notifications (Stay on current screen)
        break;
      case 2: // Profile
        // Stay here
        break;
      case 3: // Cart
        Navigator.pushReplacementNamed(context, '/cart');
        break;
      case 4: // Settings
        break;
    }
  }

  final List<Widget> _screens = [
    Center(child: Text("Home Screen Placeholder")),
    Center(child: Text("Notifications Screen Placeholder")),
    ProfileScreenContent(),
    Center(child: Text("Cart Screen Placeholder")),
    Center(child: Text("Settings Screen Placeholder")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

class ProfileScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://via.placeholder.com/150", // Replace with actual profile image URL
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Ali Siraj",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Welcome to Quick Medical Store",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.edit, color: Colors.blueAccent),
            title: Text("Edit Profile"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle edit profile action
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt, color: Colors.blueAccent),
            title: Text("My Orders"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle my orders action
            },
          ),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.blueAccent),
            title: Text("Billing"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle billing action
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: Colors.blueAccent),
            title: Text("FAQ"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle FAQ action
            },
          ),
        ],
      ),
    );
  }
}
