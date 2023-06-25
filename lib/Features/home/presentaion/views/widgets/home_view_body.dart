import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBode extends StatelessWidget {
  const HomeViewBode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
        ],
      ),
    );
  }
}
