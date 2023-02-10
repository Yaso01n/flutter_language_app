import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
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
        ? Container(
            decoration: BoxDecoration(color: color),
            child: ListTile(
              title: Text(
                item.jpName,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                item.enName,
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(item.sound);
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
            ),
          )
        : Container(
            decoration: BoxDecoration(color: color),
            child: ListTile(
              leading: Container(
                  color: Colors.white, child: Image.asset(item.image!)),
              title: Text(
                item.jpName,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                item.enName,
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(item.sound);
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
            ),
          );
  }
}
