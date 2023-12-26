import 'package:adaptive_layout_practice/widgets/adaptive_layout.dart';
import 'package:adaptive_layout_practice/widgets/desktop_layout.dart';
import 'package:adaptive_layout_practice/widgets/mobile_layout.dart';
import 'package:adaptive_layout_practice/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout(),
        ));
  }
}
