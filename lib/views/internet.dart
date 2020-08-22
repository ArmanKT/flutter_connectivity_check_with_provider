import 'package:flutter/material.dart';

class InternetNotAvailable extends StatelessWidget {
  const InternetNotAvailable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      curve: Curves.easeInOutCubic,
      duration: Duration(milliseconds: 500),
      child: Container(
        height: 33,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "OFFLINE",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 8.0,
            ),
            SizedBox(
              width: 12.0,
              height: 12.0,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InternetAvailable extends StatelessWidget {
  const InternetAvailable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      curve: Curves.easeInOutCubic,
      duration: Duration(milliseconds: 500),
      child: Container(
        height: 33,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ONLINE",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
