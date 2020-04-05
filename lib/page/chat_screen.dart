import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff111D27),
        body: new ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, i) => new Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 70, right: 20),
                      child: Divider(
                        color: Colors.grey[800],
                      ),
                    ),
                    new ListTile(
                        leading: new Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        dummyData[i].avatarUrl)))),
                        title: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              dummyData[i].name,
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[300]),
                            ),
                            new Text(dummyData[i].time,
                                style: new TextStyle(
                                    color: Colors.grey, fontSize: 11.0))
                          ],
                        ),
                        subtitle: new Container(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: <Widget>[
                                dummyData[i].icon == "single"
                                    ? Icon(
                                        Icons.check,
                                        size: 20,
                                        color: Colors.grey,
                                      )
                                    : Icon(
                                        Icons.done_all,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                Container(
                                  width: 2,
                                ),
                                new Text(dummyData[i].message,
                                    style: new TextStyle(
                                        color: Colors.grey, fontSize: 15.0))
                              ],
                            )))
                  ],
                )));
  }
}
