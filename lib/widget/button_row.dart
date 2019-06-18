import 'package:flutter_web/material.dart';


class ButtonRow extends StatelessWidget {
  const ButtonRow({Key key, this.size = MainAxisSize.min}) : super(key: key);
  final MainAxisSize size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: size,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          color: Color(0XFFFBEFD9),
          child: Center(
            child: Image.asset(
              "social/facebook.png",
              height: 15.0,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Color(0XFFFBEFD9),
          child: Center(
            child: Image.asset(
              "social/twitter.png",
              height: 15.0,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Color(0XFFFBEFD9),
          child: Center(
            child: Image.asset(
              "social/instagram.png",
              height: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}