import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/models/message.dart';

class ChatMessage extends StatelessWidget {
  final Message message;
  final bool isReceiver;

  const ChatMessage({Key? key, required this.message, required this.isReceiver})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isReceiver ? buildReceiverMessage() : buildSenderMessage();
  }

  Widget buildSenderMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: message.sender!.color!,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            child: Image(
              height: 20.0,
              width: 20.0,
              image: AssetImage(message.sender!.image!),
            ),
          ),
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  margin: const EdgeInsets.only(
                    right: 50,
                    top: 10,
                    bottom: 10,
                    left: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Text(
                    message.text!,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Metropolis Regular',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Text(
                  message.time!,
                  style: const TextStyle(
                    fontFamily: 'Metropolis Light',
                    color: Colors.black26,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildReceiverMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            message.time!,
            style: const TextStyle(
              fontFamily: 'Metropolis Light',
              color: Colors.black26,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            margin: const EdgeInsets.only(
              right: 10,
              top: 10,
              bottom: 10,
              left: 50,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFEDEEF7),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),
              ),
            ),
            child: Text(
              message.text!,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Metropolis Regular',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
