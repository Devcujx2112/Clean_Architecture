import 'package:clean_code/Presentation/Model/item_menu.dart';
import 'package:flutter/material.dart';

class MenuAppAnimation extends StatefulWidget {
  const MenuAppAnimation({super.key});

  @override
  State<MenuAppAnimation> createState() => _MenuAppAnimationState();
}

class _MenuAppAnimationState extends State<MenuAppAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero List View")),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return ListTile(
            minTileHeight: 100,
            title: Text(item.title),
            leading: Hero(
              tag: "hero_list_item_$index",
              child: Container(
                width: 60,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: item.color.withValues(alpha: 0.1),
                ),
                child: Icon(item.icon, color: item.color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item.builder()),
              );
            },
          );
        },
      ),
    );
  }
}
