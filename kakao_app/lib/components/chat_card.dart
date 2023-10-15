import 'package:flutter/material.dart';
import 'package:kakao_app/models/chat.dart';
import 'package:kakao_app/screens/chat_room_screen.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;
  const ChatCard({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRoomScreen(),
            ));
      },
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(chat.image),
              ),
              title: Text(
                chat.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(chat.content),
              contentPadding: const EdgeInsets.all(0),
            ),
          ),
          Column(
            children: [
              Text(
                chat.time,
                style: TextStyle(
                  color: Color(0xFFa5a5a5),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              if (chat.count != "0")
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFde6344),
                  ),
                  child: Text(
                    chat.count,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
