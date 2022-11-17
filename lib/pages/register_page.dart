import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(label: Text("Email"),
              prefixIcon: Icon(Icons.email)),
            ),
            TextFormField(
              decoration: InputDecoration(label: Text("Password"),
              prefixIcon: Icon(Icons.lock)),
            ),
            TextFormField(
              decoration: InputDecoration(label: Text("Confirm Password"),
              prefixIcon: Icon(Icons.lock)),
            )
          ],
        ),
      ),
    );
  }
}
