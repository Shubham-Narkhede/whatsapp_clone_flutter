import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff111D27),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                height: 10,
              ),
              ListTile(
                leading: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://avatars3.githubusercontent.com/u/583231?v=4")))),
                title: Text(
                  "Komal",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call_made,
                      color: Color(0Xff128C7E),
                      size: 15,
                    ),
                    Container(
                      width: 5,
                    ),
                    Text(
                      "Today, 2:16 pm",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.call,
                  color: Color(0Xff128C7E),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70, right: 20),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),
              ListTile(
                leading: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://avatars3.githubusercontent.com/u/583233?v=4")))),
                title: Text(
                  "Sandip",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call_made,
                      color: Color(0Xff128C7E),
                      size: 15,
                    ),
                    Container(
                      width: 5,
                    ),
                    Text(
                      "Yesterday, 7:00 pm",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.video_call,
                  color: Color(0Xff128C7E),
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70, right: 20),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),
              ListTile(
                leading: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://avatars3.githubusercontent.com/u/583233?v=4")))),
                title: Text(
                  "Sandip",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call_received,
                      color: Color(0Xff128C7E),
                      size: 15,
                    ),
                    Container(
                      width: 5,
                    ),
                    Text(
                      "Yesterday, 6:30 pm",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.call,
                  color: Color(0Xff128C7E),
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70, right: 20),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ));
  }
}
