import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo ,
            height: 20,
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                size: 26,
              ),
          ),
        ],
      ),
    );
  }
}
