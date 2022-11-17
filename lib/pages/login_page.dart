import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email"),
                // ตีกรอบ
                border: OutlineInputBorder(),
                // เหมือนตอน Focus แล้ว
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // icon
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            rowSpace(),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Password"),
                // ตีกรอบ
                border: OutlineInputBorder(),
                // เหมือนตอน Focus แล้ว
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // icon
                prefixIcon: Icon(Icons.lock),
              ),
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            rowSpace(),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            rowSpace(),
            TextButton(
                onPressed: () => onRegister(context),
                child: Text("Register"))
          ],
        ),
      ),
    );
  }

// Utility
  Widget rowSpace() {
    return SizedBox(
      height: 8,
    );
  }

  // Handler
  void onRegister(BuildContext context) {
    Navigator.of(context).pushNamed('/register');
  }
}
