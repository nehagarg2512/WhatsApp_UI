import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class MobileChatInput extends StatelessWidget {
  const MobileChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          fillColor: mobileChatBoxColor,
          filled: true,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.emoji_emotions,
              color: Colors.grey,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.attach_file,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.money,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          hintText: 'Type a message',
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20), right: Radius.circular(20.0)),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
