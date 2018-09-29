import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
               flex: 2,
               child: Container(
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child: Icon(
                          Icons.insert_emoticon,
                          color: Colors.redAccent,
                          size: 50.0,
                        ),
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: 10.0),
                     ),
                     Text(
                       "Splash Screen!",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 25.0,
                         fontWeight: FontWeight.bold),
                     ),
                   ],
                 ),
               ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Feels Good",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                      ),
                    
                    )
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}