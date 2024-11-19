import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const HomeView(),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
