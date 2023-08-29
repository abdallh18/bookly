import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image_view.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(
            imageUrl:
              bookModel.volumeInfo.imageLinks?.thumbnail??"" ,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
         bookModel.volumeInfo.title! ,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
         Opacity(
          opacity: .7,
          child: Text(
           bookModel.volumeInfo.authors?[0]??"",
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
         BooksAction(
          bookModel: bookModel,
         ),
      ],
    );
  }
}
