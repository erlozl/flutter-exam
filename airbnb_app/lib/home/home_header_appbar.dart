import 'package:airbnb_app/color.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/text_styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAppBarLogo(),
        Spacer(),
        _buildAppBarMenu(),
      ],
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: kAccentColor,
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "RoomOfAll",
          style: h5(mColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text(
          "회원가입",
          style: subTitle1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "로그인",
          style: subTitle1(mColor: Colors.white),
        ),
      ],
    );
  }
}
