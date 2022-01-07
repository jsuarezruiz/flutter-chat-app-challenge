import 'package:flutter/material.dart';
import 'package:flutter_chat_app_challenge/models/message.dart';
import 'package:flutter_chat_app_challenge/models/user.dart';

// Users
final User user1 = User(
  name: 'Alaya Cordova',
  image: 'images/emoji1.png',
  color: Color(0xFFFFE0EC),
);

final User user2 = User(
  name: 'Cecily Trujillo',
  image: 'images/emoji2.png',
  color: Color(0xFFBFE9F2),
);

final User user3 = User(
  name: 'Eathan Sheridan',
  image: 'images/emoji3.png',
  color: Color(0xFFFFD6C4),
);

final User user4 = User(
  name: 'Komal Orr',
  image: 'images/emoji4.png',
  color: Color(0xFFC3C1E6),
);

final User user5 = User(
  name: 'Sariba Abood',
  image: 'images/emoji5.png',
  color: Color(0xFFFFE0EC),
);

final User user6 = User(
  name: 'Justin O\'Moore',
  image: 'images/emoji6.png',
  color: Color(0xFFFFE5A6),
);

final User user7 = User(
  name: 'Alissia Shah',
  image: 'images/emoji7.png',
  color: Color(0xFFFFE0EC),
);

final User user8 = User(
  name: 'Antoni Whitney',
  image: 'images/emoji8.png',
  color: Color(0xFFFFE0EC),
);

final User user9 = User(
  name: 'Jaime Zuniga',
  image: 'images/emoji9.png',
  color: Color(0xFFC3C1E6),
);

final User user10 = User(
  name: 'Barbara Cherry',
  image: 'images/emoji10.png',
  color: Color(0xFFFF95A2),
);

List<User> users = [
  user1,
  user2,
  user3,
  user4,
  user5,
  user6,
  user7,
  user8,
  user9,
  user10
];

// Chats
List<Message> chats = [
  Message(
    sender: user6,
    time: '18:32',
    text: 'Hey there! What\'s up? Is everything ok?',
  ),
  Message(
    sender: user1,
    time: '14:05',
    text: 'Can I call you back later?, I\'m in a meeting.',
  ),
  Message(
    sender: user3,
    time: '14:00',
    text: 'Yeah. Do you have any good song to recommend?',
  ),
  Message(
    sender: user2,
    time: '13:35',
    text: 'Hi! I went shopping today and found a nice t-shirt.',
  ),
  Message(
    sender: user4,
    time: '12:11',
    text: 'I passed you on the ride to work today, see you later.',
  ),
];

// Chat messages
List<Message> getMessages(User sender) {
  return [
    Message(
      sender: sender,
      time: '18:35',
      text: 'Hey there! What\'s up?',
    ),
    Message(
      sender: null,
      time: '18:36',
      text: 'Nothing. Just chilling and watching YouTube. What about you?',
    ),
  ];
}
