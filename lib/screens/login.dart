import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/favicon3.png', // Add your logo image path here
                    width: 120,
                    height: 90,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Quick Medical",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Description Text
            const Text(
              "Please Enter your Mobile Number\nto Login/Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            // Phone Number Input Field
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 12.0),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black12,
            //         blurRadius: 10,
            //         offset: Offset(0, 5),
            //       ),
            //     ],
            //   ),
            //   child: TextField(
            //     keyboardType: TextInputType.phone,
            //     decoration: InputDecoration(
            //       hintText: "+91 9265614292",
            //       hintStyle: TextStyle(color: Colors.black45),
            //       border: InputBorder.none,
            //       prefixIcon: Icon(Icons.phone, color: Colors.black45),
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 30),

            // Email Field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email, color: Colors.black45),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Password Field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock, color: Colors.black45),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Sign-Up Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4157FF),
                  foregroundColor: Colors.white,
                  iconColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.blueAccent.withOpacity(0.9),
                  elevation: 10,
                ),
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Colors.white10,
                //   // foregroundColor: Colors.white,
                //   // shape: RoundedRectangleBorder(
                //   //   borderRadius: BorderRadius.circular(30),
                //   // ),
                //   // shadowColor: Colors.green.withOpacity(0.9),
                //   // elevation: 10,
                // ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 16,
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

void main() => runApp(MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    ));
