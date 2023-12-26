import 'package:adaptive_layout_practice/widgets/custom_item.dart';
import 'package:adaptive_layout_practice/widgets/custom_item_two.dart';
import 'package:flutter/material.dart';

class CustomDesktop extends StatelessWidget {
  const CustomDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(
          height: 16,
        ),
        Expanded(child: CustomItemTwo()),
      ],
    );
  }
}
