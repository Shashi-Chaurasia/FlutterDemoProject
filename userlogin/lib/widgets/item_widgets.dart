import 'package:flutter/material.dart';
import 'package:userlogin/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;

  const ItemWidgets({Key? key, required this.item})
      : assert(item != null),
        super(key: key);
  // const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          onTap: () {
            print("${item.name} pressed");
          },
          leading: Image.asset(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price.toString()}",
            textScaleFactor: 1.2,
            style:
                TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
