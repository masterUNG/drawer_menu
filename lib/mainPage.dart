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
        children: <Widget>[
          new DrawerHeader(
              child: new Container(
                child: new Column(
                  children: <Widget>[
                    new Image.asset('images/masterung_round.png', width: 100.0,height: 100.0,),
                    new Text(
                      "Master UNG",
                      style: new TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        ),),
                    new Text(
                      "Developers Manager",
                      style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.lightBlueAccent),)
                  ],
                ),
              ))
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
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0),),
      ),
        drawer: drawer(context),
    );
  }
}


