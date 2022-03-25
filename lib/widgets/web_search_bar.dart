import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: dividerColor,
      ))),
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Icon(
              Icons.search,
              size: 20.0,
            ),
          ),
          hintStyle: TextStyle(
            fontSize: 12.0,
          ),

          hintText: 'Search or Start new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20), right: Radius.circular(20.0)),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.all(10.0),
          
        ),
      ),
    );
  }
}
