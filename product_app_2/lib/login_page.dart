import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'facebook',
                style: TextStyle(
                  color: const Color.fromARGB(255, 33, 102, 222),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email address or phone number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 49, 110, 215),
                ),
                onPressed: () {
                  // Handle login logic here
                  // Navigate to product list page on successful login
                  Navigator.pushReplacementNamed(context, '/productList');
                },
                child: Text(
                  'Log In',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle forgotten account logic here
                },
                child: Text(
                  'Forgotten account',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 40, 105, 217)),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle sign up logic here
                },
                child: Text(
                  'Sign Up',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 40, 105, 217)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
