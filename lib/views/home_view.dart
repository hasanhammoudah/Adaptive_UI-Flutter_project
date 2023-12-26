import 'package:adaptive_layout_practice/widgets/custom_drawer.dart';
import 'package:adaptive_layout_practice/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    //print('media query width = ${MediaQuery.sizeOf(context).width}');
    return MediaQuery.sizeOf(context).width - 32 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        : null;
  }
}





// Note Another Way for this code

// import 'package:adaptive_layout_practice/widgets/custom_drawer.dart';
// import 'package:adaptive_layout_practice/widgets/home_view_body.dart';
// import 'package:flutter/material.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       drawer: const CustomDrawer(),
//       backgroundColor: const Color(0xffDBDBDB),
//       appBar: const CustomAdaptiveAppBar(),
//       body: const HomeViewBody(),
//     );
//   }
// }

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains) {
//       if (constrains.maxWidth < 900) {
//         return AppBar(
//           backgroundColor: Colors.black,
//           leading: GestureDetector(
//             onTap: () {
//               // scaffoldKey.currentState!.openDrawer();
//             },
//             child: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//         );
//       } else {
//         return const SizedBox();
//       }
//     });
//   }

//   @override
//   // TODO: implement preferredSize

//   // Note 56 this is constants value
//   Size get preferredSize => const Size.fromHeight(56);
// } 