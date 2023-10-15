import 'package:airbnb_app/home/home_body.dart';
import 'package:airbnb_app/home/home_body_banner.dart';
import 'package:airbnb_app/home/home_header_form.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/text_styles.dart';
import 'package:flutter/material.dart';

import '../home/home_header.dart';
import '../home/home_header_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HomeHeader(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
