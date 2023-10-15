import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kakao_app/screens/chat_screen.dart';
import 'package:kakao_app/screens/friend_screen.dart';
import 'package:kakao_app/screens/more_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendScreen(),
          ChatScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // sholabels 부분은 선택된 항목과 선택되지 않은 항목의 라벨(텍스트를)
        // 표시할 여부를 지정 - 즉 false면 라벨표시X
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[100],
        // 이렇게 하면 가장 밝은 회색임
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          // onTap 이벤트 핸들러의 매개변수로,
          // 사용자가 하단 네비게이션 바에서 아이콘을 탭했을 때
          // 해당 이벤트에서 전달되는 값

          // onTap 이벤트 핸들러는 사용자의 동작에 응답하여 실행
          // 즉, 사용자가 화면 위젯을 탭할 때 호출
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ellipsisH),
            label: "",
          ),
        ],
      ),
    );
  }
}
