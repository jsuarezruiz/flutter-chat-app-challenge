import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/models/user.dart';

class SuggestedContact extends StatelessWidget {
  final User user;

  const SuggestedContact({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: user.color!,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                height: 36.0,
                width: 36.0,
                image: AssetImage(user.image!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
