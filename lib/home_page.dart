import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String email;
  final String password;

  const HomePage({
    Key? key, // memberikan nilai default non-null dengan menambahkan tanda tanya setelah tipe data
    required this.email, // parameter email wajib diisi
    required this.password, // parameter password wajib diisi
  }) : super(key: key);

  // Constructor default
  HomePage.empty() : email = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $email!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Your password is $password.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
