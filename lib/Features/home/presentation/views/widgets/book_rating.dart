import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 16,
        ),
        SizedBox(width: 8,),
        Text(
          '4.8',
          style: Style.textStyle16,
        ),
        SizedBox(width: 6,),
        Opacity(
          opacity: 0.6,
          child: Text(
            '(245)',
            style: Style.textStyle14
          ),
        ),
      ],
    );
  }
}
