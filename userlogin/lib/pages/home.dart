import 'package:flutter/material.dart';
import 'package:userlogin/models/catalog.dart';
import 'package:userlogin/widgets/drawer.dart';
import 'package:userlogin/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  //const homePage({Key? key}) : super(key: key);
  final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Web Aapp"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidgets(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
