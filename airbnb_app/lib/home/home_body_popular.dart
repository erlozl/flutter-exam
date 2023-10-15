import 'package:airbnb_app/home/home_body_popular_item.dart';
import 'package:airbnb_app/size.dart';
import 'package:flutter/material.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_m),
      child: Column(
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: gap_m),
      child: SizedBox(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "한국 숙소에 직접 다녀간 게스트의 후기",
                style: TextStyle(fontSize: gap_m, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: gap_xs,
              ),
              Text("게스트 후기 2,500,000개 이상, 평균 평점 4.7점 ( 5점 만점 )"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularList() {
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(
          width: 7.5,
        ),
        HomeBodyPopularItem(id: 1),
        SizedBox(
          width: 7.5,
        ),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
