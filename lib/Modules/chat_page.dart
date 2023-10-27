import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/chart.dart';
import '../Models/chat_users.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Muller Maina", secondaryText: "First app maneno", image: "assets/userImage1.jpg", time: "Now"),
    ChatUsers(text: "Collo Quan", secondaryText: "New stock imeingia, si utakam?", image: "assets/userImage2.jpg", time: "Yesterday"),
    ChatUsers(text: "Taliban Mutuku", secondaryText: "Nani alichukua powersource cable yangu?", image: "assets/userImage3.jpg", time: "31 Sept"),
    ChatUsers(text: "Kellen Mutindwa", secondaryText: "Nikulete matunda kwa ofisi?", image: "assets/userImage4.jpg", time: "28 Sept"),
    ChatUsers(text: "Mike Sonko", secondaryText: "Young man dont joke with my business!!", image: "assets/userImage5.jpg", time: "23 Sept"),
    ChatUsers(text: "Susan Kihika", secondaryText: "will update you in evening", image: "assets/userImage6.jpg", time: "17 Sept"),
    ChatUsers(text: "Hesbon Migiro", secondaryText: "Just sent 0.78BTC to your wallet address", image: "assets/userImage7.jpg", time: "24 Aug"),
    ChatUsers(text: "John Wick2", secondaryText: "How are you?", image: "assets/userImage8.jpg", time: "18 Aug"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.blueAccent,size: 20,),
                          SizedBox(width: 2,),
                          Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0|| index == 0)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}