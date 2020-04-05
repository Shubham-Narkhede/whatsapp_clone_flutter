import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/page/store_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff111D27),
        body: Container(
          // color: Color(0xfff2f2f2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 0.0,
                color: Color(0xff111D27),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ListTile(
                    leading: Stack(
                      children: <Widget>[
                        new Container(
                            width: 55.0,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://avatars3.githubusercontent.com/u/55597383?s=400&u=5549a16ae62d223b0375d16f9bf52fda3329f6a0&v=4")))),
                        Positioned(
                          bottom: 0.0,
                          right: 1.0,
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                    title: Text(
                      "My status",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    subtitle: Text(
                      "Tap to add status update",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey[400]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5),
                child: Text("Recent updates",
                    style: TextStyle(
                        color: Colors.grey[400], fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(0.0),
                  color: Color(0xff111D27),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: new Container(
                            width: 55.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://avatars3.githubusercontent.com/u/583231?v=4")))),
                        title: Text(
                          "Abubakar Pagas",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                        subtitle: Text(
                          "Today, 20:16 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[400]),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryPageView())),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70, right: 20),
                        child: Divider(
                          color: Colors.grey[800],
                        ),
                      ),
                      ListTile(
                        leading: new Container(
                            width: 55.0,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://avatars3.githubusercontent.com/u/583240?v=4")))),
                        title: Text(
                          "Jyotsna",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                        subtitle: Text(
                          "Yesterday, 17:05 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[400]),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryPageView())),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70, right: 20),
                        child: Divider(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
