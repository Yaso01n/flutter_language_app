import 'package:flutter/material.dart';

class colorsPage extends StatelessWidget {
  const colorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors'), backgroundColor: const Color.fromARGB(255, 146, 7, 146),),
    );
  }
}