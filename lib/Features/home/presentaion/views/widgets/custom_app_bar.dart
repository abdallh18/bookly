import 'package:appnoteadjkasd/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 20),
      child: Row(children: [
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KsearchView);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 26,
          ),
        ),
      ]),
    );
  }
}
