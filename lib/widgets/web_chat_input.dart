import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebChatInput extends StatelessWidget {
  const WebChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file,
                color: Colors.grey,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Type Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20.0),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
