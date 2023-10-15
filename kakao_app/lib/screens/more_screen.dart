import 'package:flutter/material.dart';
import 'package:kakao_app/models/tab.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("더보기"),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List<Widget>.generate(
          tabs.length,
          (index) => Column(
            children: [
              Icon(tabs[index].icon),
              SizedBox(
                height: 5,
              ),
              Text(tabs[index].text),
            ],
          ),
        ),
      ),
    );
  }
}
