import 'package:flutter/material.dart';
import 'package:kakao_app/components/profile_card.dart';
import 'package:kakao_app/models/user.dart';

class FriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("친구"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          ProfileCard(user: me),
          Divider(),
          // Divider를 사용하여 간격을 설정하고 시각적으로 분리선을 추가
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text("친구"),
                SizedBox(
                  width: 6,
                ),
                Text("${friends.length}"),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: List<Widget>.generate(
                // List일때는 Widget으로 형변환 필수
                friends.length,
                (index) => ProfileCard(user: friends[index]),
              ),
            ),
          )
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: friends.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return ProfileCard(user: friends[index]);
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
