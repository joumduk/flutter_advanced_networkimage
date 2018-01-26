import 'package:flutter/material.dart';
import '../../lib/flutter_advanced_networkimage.dart';
import '../../lib/zoomable_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('Flutter Advanced Network Image Example'),
            bottom: new TabBar(
              tabs: <Widget>[
                const Tab(text: 'image widget'),
                const Tab(text: 'list widget')
              ]
            )
          ),
          body: new TabBarView(
            children: <Widget>[
              new ZoomableWidget(
                minScale: 0.3,
                maxScale: 2.0,
                child: new Center(
                  child: new Image(
                    image: new AdvancedNetworkImage('https://user-images.githubusercontent.com/1551736/28209258-53234bf0-68c4-11e7-9586-d4a3526f0f45.png')
                  )
                )
              ),
              new ZoomableWidget(
                minScale: 0.8,
                maxScale: 1.6,
                child: new ListView(
                  children: <Widget>[
                    new Image(
                      image: new AdvancedNetworkImage('https://user-images.githubusercontent.com/1551736/28209258-53234bf0-68c4-11e7-9586-d4a3526f0f45.png')
                    ),
                    new Image(
                      image: new AdvancedNetworkImage('https://user-images.githubusercontent.com/1551736/28209258-53234bf0-68c4-11e7-9586-d4a3526f0f45.png')
                    ),
                    new Image(
                      image: new AdvancedNetworkImage('https://user-images.githubusercontent.com/1551736/28209258-53234bf0-68c4-11e7-9586-d4a3526f0f45.png')
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}
