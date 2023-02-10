import 'package:flutter/material.dart';
import 'package:learn_language/models.dart/number_model.dart';
import 'package:learn_language/components.dart/list_item.dart';


class numbersPage extends StatelessWidget {
  const numbersPage({Key? key}) : super(key: key);

  final List<Item> numbers = const [
    Item(
      jpName: 'ichi',
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    Item(
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    Item(
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    Item(
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    Item(
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    Item(
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    Item(
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    Item(
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    Item(
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    Item(
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            itemType: 'numbers',
            item: numbers[index] , color: Color(0xffEF9235),);
        },
      ),
    );
  }
}
