import 'package:appnoteadjkasd/Features/home/presentaion/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'coustom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimalarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
