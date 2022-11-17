import 'package:flutter/material.dart';
import 'package:simple_mobile/widgets/my_add_btn.dart';
import 'package:simple_mobile/widgets/my_counter.dart';

class MyRiverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text("My River")  ),
  body:  Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      MyAddBtn(),
      MyCounter(),
    ],
  ),
);
  }

}