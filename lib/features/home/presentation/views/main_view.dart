import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeView(),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
