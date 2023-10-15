import 'package:airbnb_app/text_styles.dart';
import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;
  const CommonFormField({required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            // TextFormField 내부 세로 정렬
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
              // TextFormField 내부에 패딩 주기
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 20,
            child: Text(
              prefixText,
              style: overLine(),
            ),
          ),
        ],
      ),
    );
  }
}
