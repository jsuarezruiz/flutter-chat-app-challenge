import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/const.dart';
import 'package:flutter_chat_app_challenge/models/message.dart';
import 'package:flutter_chat_app_challenge/models/user.dart';
import 'package:flutter_chat_app_challenge/services/message_service.dart';
import 'package:flutter_chat_app_challenge/widgets/suggested_contact.dart';
import 'package:flutter_chat_app_challenge/widgets/recent_chat.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: accentColor,
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Chat with \nyour friends",
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'Metropolis Black',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              wordSpacing: 1.1,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ),
      body: Container(
        color: accentColor,
        child: Column(
          children: [
            buildSuggestedContactsWidget(),
            buildRecentChatsWidget(),
          ],
        ),
      ),
    );
  }

  Widget buildSuggestedContactsWidget() {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final User user = users[index];
                  return SuggestedContact(user: user);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRecentChatsWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        child: Container(
          height: 450,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = chats[index];
                return RecentChat(message: message);
              },
            ),
          ),
        ),
      ),
    );
  }
}
