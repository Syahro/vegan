import 'package:flutter/material.dart';
import 'package:vegan/theme.dart';
import 'package:vegan/widget/cetegory.dart';
import 'package:vegan/widget/new_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 126,
              width: double.infinity,
              decoration: BoxDecoration(
                color: yellowColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/profile.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Today’s Fresh\nVegan',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 22,
                            color: semiBlackColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/cart.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: lightGreyColor.withOpacity(0.2),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Search by name, cate, store',
                            style: lightTextStyle.copyWith(
                              fontSize: 16,
                              color: lightGreyColor,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: lightGreyColor.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Browse by cate',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: lightGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: defaultMargin,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Category(
                      imageUrl: 'assets/buah.png',
                      name: 'Buah',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Category(
                      imageUrl: 'assets/bawang.png',
                      name: 'Bawang',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Category(
                      imageUrl: 'assets/kayu.png',
                      name: 'Kayu',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Category(
                      imageUrl: 'assets/sayur.png',
                      name: 'Sayur',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New In',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: lightGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewIn(
                        imageUrl: 'assets/puntung_kayu.png',
                        name: 'Puntung Kayu',
                        price: '\$18,309/kg',
                        isAdd: false,
                      ),
                      NewIn(
                          imageUrl: 'assets/alphard_cut.png',
                          name: 'Alphard Cut',
                          price: '\$5,109/kg',
                          isAdd: true),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewIn(
                        imageUrl: 'assets/grape.png',
                        name: 'Grape Asyix',
                        price: '\$18,309/kg',
                        isAdd: false,
                      ),
                      NewIn(
                        imageUrl: 'assets/kayu_pahit.png',
                        name: 'Kayu Pahit',
                        price: '\$18,309/kg',
                        isAdd: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
