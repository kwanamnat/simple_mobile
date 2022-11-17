import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RowSpace extends StatelessWidget {
  final double? height;
  const RowSpace({super.key,this.height = 8});
  @override
  Widget build(Object context) {
    return  SizedBox(
      height: height,
    );
  }
}
