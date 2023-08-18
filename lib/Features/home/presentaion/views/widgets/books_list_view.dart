import 'package:flutter/cupertino.dart';

import 'custom_book_image_view.dart';

class SimplerBookListView extends StatelessWidget {
  const SimplerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: CustomBookImage(
              imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/fb/Le_Livre_d%27image.png",
            ),
          );
        },
      ),
    );
  }
}
