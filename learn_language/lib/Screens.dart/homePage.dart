// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:learn_language/Screens.dart/numbersPage.dart';
import 'package:learn_language/Screens.dart/phrasesPage.dart';
import '../components.dart/category_item.dart';
import 'colorsPage.dart';
import 'familymembersPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color.fromARGB(255, 41, 32, 2),
      ),
      body: Column(
        children: [
          category(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const numbersPage() ;
              }));
            },
            text: 'Numbers',
            color: const Color.fromARGB(255, 247, 187, 9),
          ),
          category(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const familymembersPage() ;
              }));
            },
            text: 'Family Members',
            color: const Color.fromARGB(255, 5, 107, 10),
          ),
          category(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const colorsPage() ;
              }));
            },
            text: 'Colors',
            color: const Color.fromARGB(255, 146, 7, 146),
          ),
          category(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const phrasesPage() ;
              }));
            },
            text: 'Phrases',
            color: const Color.fromARGB(255, 14, 131, 167),
          ),
        ],
      ),
    );
  }
}
