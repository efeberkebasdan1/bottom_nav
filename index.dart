import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body);
  }

  Widget get body => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ Color(0xFFf7ff00),Color(0xFFC5FF00)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Icon(
              Icons.flash_on,
              size: 240,
            ),
            Text('R!SK',
                style: TextStyle(fontSize: 52, fontFamily: 'Orbitron')),
            SizedBox(
              height: 70,
              child: Text(
                "          Join the action! \n We can't wait to see you!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 55,
                  width: 155,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(58.0),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Color(0xFFf7ff00),
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("Sign In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontFamily: 'Orbitron')),
                  ),
                ),
                Container(
                  height: 55,
                  width: 155,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(58.0),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.black,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xFFf7ff00),
                          fontSize: 21,
                          fontFamily: 'Orbitron'),
                    ),
                  ),
                ),
              ],
            ),
           
             Container(
                  height: 35,
                  width: 117,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(58.0),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.white.withOpacity(0.1),
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "More info",
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 15,
                          fontFamily: 'Orbitron'),
                    ),
                  ),
                ),
                 SizedBox(
              height: 30,
            ),
          ],
          
        ),
      );
}
