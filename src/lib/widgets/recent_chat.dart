import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/models/message.dart';
import 'package:flutter_chat_app_challenge/screen/details.dart';

class RecentChat extends StatelessWidget {
  final Message message;

  const RecentChat({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Details(user: message.sender!),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: message.sender!.color!,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                height: 48.0,
                width: 48.0,
                image: AssetImage(message.sender!.image!),
              ),
            ),
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    message.sender!.name!,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis Black',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    message.time!,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis Regular',
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
          subtitle: Text(
            message.text!,
            style: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'Metropolis Light',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
