import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new _StatefulWidget();
  }
}

class _StatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new __StatefulWidgetState();
  }
}

class __StatefulWidgetState extends State<_StatefulWidget> {
  var title = '';

  Drawer drawer(context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Image.asset(
                    'images/masterung_round.png',
                    width: 80.0,
                    height: 80.0,
                  ),
                  new Text(
                    "Master UNG",
                    style: new TextStyle(
                        color: Colors. white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  new Text(
                    "Developers Manager",
                    style: new TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.photo_album),
            title: new Text("Photo"),
            onTap: (){
              setState(() {
                  this.title = 'This is Photos page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text("Notifications"),
            onTap: (){
              setState(() {
                  this.title = 'This is Notifications';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text("Settings"),
          ),
          new Divider(
            color: Colors.black45,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text("About Me"),
          ),
          new ListTile(
            title: new Text("Privacy"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Draw in Flutter"),
      ),
      body: new Center(
        child: new Text(
          this.title,
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      drawer: drawer(context),
    );
  }
}
