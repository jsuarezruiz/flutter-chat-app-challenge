import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/const.dart';
import 'package:flutter_chat_app_challenge/models/message.dart';
import 'package:flutter_chat_app_challenge/models/user.dart';
import 'package:flutter_chat_app_challenge/services/message_service.dart';
import 'package:flutter_chat_app_challenge/widgets/chat_message.dart';

class Details extends StatelessWidget {
  final User user;
  final MessageService messageService = MessageService();

  Details({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: accentColor,
        title: buildTitleWidget(context),
        elevation: 0,
      ),
      body: Column(
        children: [
          buildContactInformationWidget(),
          Expanded(
            child: buildChatWidget(),
          ),
          buildChatInputWidget(context),
        ],
      ),
    );
  }

  Widget buildTitleWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Text(
            "Back",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Metropolis Regular',
              fontWeight: FontWeight.w400,
              color: Colors.white54,
            ),
          ),
        ),
        Text(
          "Search",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Metropolis Regular',
            fontWeight: FontWeight.w400,
            color: Colors.white54,
          ),
        ),
      ],
    );
  }

  Widget buildContactInformationWidget() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Container(
                width: 200.0,
                child: Text(
                  user.name!,
                  style: const TextStyle(
                    fontSize: 32,
                    fontFamily: 'Metropolis Black',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 1.1,
                    letterSpacing: 1.1,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  child: const Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                  ),
                  child: Icon(
                    Icons.videocam_sharp,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatWidget() {
    var messages = messageService.getMessages(user);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          child: ListView.builder(
            reverse: true,
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              final Message message = messages[index];
              final bool isReceiver = message.sender == null;
              return ChatMessage(
                message: message,
                isReceiver: isReceiver,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildChatInputWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F8),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (value) {
                  // TODO:
                },
                decoration: const InputDecoration.collapsed(
                  hintText: "Type your message...",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: accentColor,
                ),
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
