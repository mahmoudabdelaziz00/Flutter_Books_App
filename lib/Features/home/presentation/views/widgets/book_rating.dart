import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
            FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
        ),
        SizedBox(width: 8,),
        Text(
          '4.8',
          style: Style.textStyle16,
        ),
        SizedBox(width: 6,),
        Text(
          '(245)',
          style: Style.textStyle14.copyWith(
            color: Color(0xff707070)
          ),
        ),
      ],
    );
  }
}
