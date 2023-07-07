import 'package:bookly/Features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/featured_list_view.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBookListView(),
            SizedBox(
              height: 50,
            ),
            Text(
              "Best seller",
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 20,
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
