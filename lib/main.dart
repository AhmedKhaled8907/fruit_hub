import 'package:flutter/material.dart';
import 'package:fruit_hub/features/splash/views/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit Hub',
      home: SplashView(),
    );
  }
}
