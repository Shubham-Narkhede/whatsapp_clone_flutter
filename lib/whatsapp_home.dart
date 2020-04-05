import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/page/call_screen.dart';
import 'package:whatsapp_clone_flutter/page/camera_screen.dart';
import 'package:whatsapp_clone_flutter/page/chat_screen.dart';
import 'package:whatsapp_clone_flutter/page/status_screen.dart';
import 'package:camera/camera.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({this.cameras});

  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  final GlobalKey _menuKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    var customFabButton;
    if (_tabController.index == 1) {
      customFabButton = CustomFabButton(
        color: Color(0Xff128C7E),
        onPressed: () => null,
        icon: Icons.message,
      );
    } else if (_tabController.index == 2) {
      customFabButton = Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 40,
            child: CustomFabButton(
              color: Colors.grey[800],
              onPressed: () => null,
              icon: Icons.edit,
              size: 20,
            ),
          ),
          Container(
            height: 15,
          ),
          CustomFabButton(
            color: Color(0Xff128C7E),
            onPressed: () => null,
            icon: Icons.camera,
          )
        ],
      ));
    } else if (_tabController.index == 3) {
      customFabButton = CustomFabButton(
        color: Color(0Xff128C7E),
        onPressed: () => null,
        icon: Icons.add_call,
      );
    }

    var popup_Menu_Button;
    if (_tabController.index == 1) {
      popup_Menu_Button = Theme(
          data: Theme.of(context).copyWith(cardColor: Colors.blueGrey[800]),
          child: PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "New group",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "New broadcast",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Text(
                  "WhatsAppWeb",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Text(
                  "Starred messages",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 5,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            offset: Offset(0, 100),
          ));
    } else if (_tabController.index == 2) {
      popup_Menu_Button = Theme(
          data: Theme.of(context).copyWith(cardColor: Colors.blueGrey[800]),
          child: PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "Status privacy",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            offset: Offset(0, 100),
          ));
    } else if (_tabController.index == 3) {
      popup_Menu_Button = Theme(
          data: Theme.of(context).copyWith(cardColor: Colors.blueGrey[800]),
          child: PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "Clear call log",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            offset: Offset(0, 100),
          ));
    } else {
      popup_Menu_Button = Container();
    }
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: customFabButton,
      appBar: AppBar(
        backgroundColor: Color(0xff152d36),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0Xff128C7E),
          labelColor: Color(0Xff128C7E),
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          popup_Menu_Button,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
    );
  }
}

class CustomFabButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final double size;

  const CustomFabButton(
      {Key key, this.icon, this.color, this.onPressed, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        duration: Duration(seconds: 1),
        height: 50.0,
        width: 50.0,
        child: Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
