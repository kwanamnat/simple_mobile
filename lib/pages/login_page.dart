import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_mobile/widgets/row_space.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(
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
            const RowSpace(),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Password"),
                // ตีกรอบ
                border: OutlineInputBorder(),
                // เหมือนตอน Focus แล้ว
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // icon
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const RowSpace(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Login")),
            const RowSpace(
              height: 15,
            ),
            TextButton(
                onPressed: () => onRegister(context),
                child: const Text("Register"))
          ],
        ),
      ),
    );
  }


  // Handler
  void onRegister(BuildContext context) {
    Navigator.of(context).pushNamed('/register');
  }
}
