import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image_view.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/fb/Le_Livre_d%27image.png",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle14,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
