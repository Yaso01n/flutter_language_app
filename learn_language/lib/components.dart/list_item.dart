import 'package:flutter/material.dart';
import 'package:learn_language/models.dart/number_model.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.item,
      required this.color,
      required this.itemType})
      : super(key: key);

  final Item item;
  final Color color;
  final String itemType;


  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? ListTile(
            title: Text(item.jpName),
            subtitle: Text(item.enName),
            trailing: IconButton(
              onPressed: () {
                try {
                  // AudioCache player =
                  //     AudioCache(prefix: 'assets/sounds/$itemType/');
                  // player.play(item!.sound);
                  print('played');
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        : ListTile(
            leading: Image.asset(item.image),
            title: Text(item.jpName),
            subtitle: Text(item.enName),
            trailing: IconButton(
              onPressed: () {
                try {
                  // AudioCache player =
                  //     AudioCache(prefix: 'assets/sounds/$itemType/');
                  // player.play(item!.sound);
                  print('played');
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: color,
                size: 28,
              ),
            ),
          );
  }
}
