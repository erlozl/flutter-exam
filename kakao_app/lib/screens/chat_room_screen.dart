import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kakao_app/components/chat_icon_button.dart';
import 'package:kakao_app/components/my_chat.dart';
import 'package:kakao_app/components/other_chat.dart';
import 'package:kakao_app/components/time_line.dart';
import 'package:kakao_app/models/user.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen();

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "홍길동",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          actions: [
            Icon(FontAwesomeIcons.searchengin, size: 30),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.bars, size: 20),
            SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      TimeLine(time: "2021년 1월 1일 금요일"),
                      OtherChat(
                        name: "홍길동",
                        text: "새해 복 많이 받으세요",
                        time: "오전 10:10분",
                      ),
                      MyChat(
                        text: "선생님도 많이 받으십시오",
                        time: "오후 2:15",
                      ),
                      ...List<Widget>.generate(
                          chats.length, (index) => chats[index])
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  ChatIconButton(
                    icon: Icon(FontAwesomeIcons.calendarPlus),
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        controller: _textController,
                        maxLines: 1,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  ChatIconButton(icon: Icon(FontAwesomeIcons.faceSmile)),
                  ChatIconButton(
                    icon: Icon(FontAwesomeIcons.angleUp),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
