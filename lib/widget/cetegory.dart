import 'package:flutter/material.dart';

import '../theme.dart';

class Category extends StatelessWidget {
  final String imageUrl;
  final String name;

  Category({
    this.imageUrl,
    this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            name,
            style: regularTextStyle.copyWith(
              fontSize: 16,
              color: semiBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
