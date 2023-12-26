import 'package:adaptive_layout_practice/models/drawer_item_model.dart';
import 'package:adaptive_layout_practice/widgets/custom_drawer_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'DASHBOARD', icon: Icons.home),
    DrawerItemModel(title: 'SETTINGS', icon: Icons.settings),
    DrawerItemModel(title: 'ABOUT', icon: Icons.info),
    DrawerItemModel(title: 'LOGOUT', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
