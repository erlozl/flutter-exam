import 'package:airbnb_app/color.dart';
import 'package:airbnb_app/common/common_form_field.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/text_styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
//        첫 번째 값은 가로 (x) 방향의 정렬을 나타내고 두 번째 값은 세로 (y) 방향의 정렬을 나타낸다.
//        일반적으로 x와 y 값은 -1에서 1 사이의 범위에서 정의
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(gap_l),
            child: Form(
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox(
      child: Column(
        children: [
          Text(
            "모두의 숙소에서 숙소를 검색하세요.",
            style: h4(),
          ),
          SizedBox(
            height: gap_xs,
          ),
          Text(
            "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체'숙소까지, 모두의 숙소에 다 있습니다",
            style: body1(),
          ),
          SizedBox(
            height: gap_m,
          ),
        ],
      ),
    );
  }

  Widget _buildFormField() {
    return SizedBox(
      child: Column(
        children: [
          CommonFormField(
            prefixText: "위치",
            hintText: "근처 추천 장소",
          ),
          SizedBox(
            height: gap_s,
          ),
          Row(
            children: [
              Expanded(
                child: CommonFormField(
                  prefixText: "체크인",
                  hintText: "날짜 입력",
                ),
              ),
              SizedBox(
                width: gap_s,
              ),
              Expanded(
                child: CommonFormField(
                  prefixText: "체크아웃",
                  hintText: "날짜 입력",
                ),
              ),
            ],
          ),
          SizedBox(
            height: gap_s,
          ),
          Row(
            children: [
              Expanded(
                child: CommonFormField(
                  prefixText: "성인",
                  hintText: "2",
                ),
              ),
              SizedBox(
                width: gap_s,
              ),
              Expanded(
                child: CommonFormField(
                  prefixText: "어린이",
                  hintText: "0",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFormSubmit() {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kAccentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {
            print("submit");
          },
          child: Text(
            "검색",
            style: subTitle1(mColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
