import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey.shade400,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats", // Use label instead of title
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Groups", // Use label instead of title
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile", // Use label instead of title
          ),
        ],
      ),
      body: ChatPage(),
    );
  }
}
