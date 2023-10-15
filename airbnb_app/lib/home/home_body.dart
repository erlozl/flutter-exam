import 'package:airbnb_app/home/home_body_banner.dart';
import 'package:airbnb_app/home/home_body_popular.dart';
import 'package:airbnb_app/size.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double bodywidth = getBodyWidth(context);
    return Align(
      child: SizedBox(
        width: bodywidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
