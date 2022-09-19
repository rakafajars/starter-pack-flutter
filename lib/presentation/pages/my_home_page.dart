import 'package:flutter/material.dart';
import '../../flavors.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F().name),
      ),
      body: Center(
        child: Text(
          'Hello ${Text(F().name)}',
        ),
      ),
    );
  }
}
