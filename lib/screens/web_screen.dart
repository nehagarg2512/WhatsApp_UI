import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

import '../widgets/web_chat_app_bar.dart';
import '../widgets/web_chat_input.dart';
import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ProfileBar(),
                  SearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: dividerColor),
              ),
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover),
              //
            ),
            child: Column(children: const [
              WebAppChatBar(),
              Expanded(child: ChatList()),
              WebChatInput(),
            ]),
          )
        ],
      ),
    );
  }
}
