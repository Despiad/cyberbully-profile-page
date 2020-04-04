import 'package:flutter/material.dart';

import 'widgets/info.dart';
import 'widgets/spotify_song.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Colors.white,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,
            size: MediaQuery.of(context).size.height * 0.05),
        onPressed: () {},
      ),
      title: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.height * 0.04),
          color: Color.fromRGBO(243, 243, 243, 1),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              'f3.cool/Despiad',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.share,
              size: MediaQuery.of(context).size.height * 0.05),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.settings,
              size: MediaQuery.of(context).size.height * 0.05),
          onPressed: () {},
        ),
      ],
    );
    final availableBodyHeight = (MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top);
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).padding.top * 0.5),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).padding.top * 0.5),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(243, 243, 243, 1),
                    maxRadius: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
              ],
            ),
            Container(
              height: availableBodyHeight * 0.3,
              child: Info(),
            ),
            SizedBox(
              height: availableBodyHeight * 0.05,
            ),
            Container(
              height: availableBodyHeight * 0.2,
              child: SpotifySong(),
            ),
          ],
        ),
      ),
    );
  }
}
