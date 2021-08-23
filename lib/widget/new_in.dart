import 'package:flutter/material.dart';

import '../theme.dart';

class NewIn extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final bool isAdd;

  NewIn({
    this.imageUrl,
    this.name,
    this.price,
    this.isAdd,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width:
          ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) - 8.5,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(19),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(19),
                  ),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    height: 116,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: semiBlackColor,
                        ),
                      ),
                      Text(
                        price,
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: lightGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isAdd
                    ? Container(
                        width: 120,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21),
                          border: Border.all(
                            color: lightGreyColor.withOpacity(0.4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 42,
                              width: 40,
                              decoration: BoxDecoration(
                                color: orangeColor,
                                borderRadius: BorderRadius.circular(21),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                            ),
                            Text(
                              '2 kg',
                              style: regularTextStyle.copyWith(
                                fontSize: 14,
                                color: semiBlackColor,
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 40,
                              decoration: BoxDecoration(
                                color: yellowColor,
                                borderRadius: BorderRadius.circular(21),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(
                        height: 42,
                        width: 40,
                        decoration: BoxDecoration(
                          color: yellowColor,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: semiBlackColor,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
