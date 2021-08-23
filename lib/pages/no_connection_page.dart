import 'package:flutter/material.dart';
import 'package:vegan/theme.dart';

class NoConnectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin + 4),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/illustration.png',
                width: 319,
                height: 229,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Oops! Madam?',
                style: semiBoldTextStyle.copyWith(
                  fontSize: 22,
                  color: semiBlackColor,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Tampaknya Anda tidak terhubung\ndengan koneksi Internet',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                  color: lightGreyColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 210,
                height: 45,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Try Again',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 18,
                      color: semiBlackColor,
                    ),
                  ),
                  color: yellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(57),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
