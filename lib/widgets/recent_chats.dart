import 'package:chat_app/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(chat.sender.imageUrl),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          chat.sender.name,
                        ),
                        Text(chat.text),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(chat.time),
                    Text('NEW'),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
