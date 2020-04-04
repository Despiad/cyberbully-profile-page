import 'package:flutter/material.dart';
import '../presentation/custom_icons.dart';

class SpotifySong extends StatelessWidget {
  final greenColor = Color.fromRGBO(62, 200, 124, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.height * 0.04),
        color: Color.fromRGBO(243, 243, 243, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Ivy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Ruby Haunt',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      MyFlutterApp.spotify,
                      color: greenColor,
                      size: MediaQuery.of(context).size.width * 0.05,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'Поменять песню',
                        style: TextStyle(
                          color: greenColor,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.21,
                    height: MediaQuery.of(context).size.width * 0.21,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/music_image.jpg'),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.width * 0.05,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(243, 243, 243, 0.7),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Icon(
                      Icons.play_arrow,
                      size: MediaQuery.of(context).size.width * 0.1,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
