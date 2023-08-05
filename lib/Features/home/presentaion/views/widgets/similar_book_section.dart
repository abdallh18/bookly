import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'books_list_view.dart';

class SimalarBooksSection extends StatelessWidget {
  const SimalarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Con also Like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimplerBookListView(),
      ],
    );
  }
}
