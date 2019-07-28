import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBCCard extends StatelessWidget {
  static const String NAME = "Debora Del Vecchio";
  static const String PHONE_NUMBER = "111-222-3333";
  static const String GITHUB_PROFILE = "https://github.com/deb-95";

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            MyBCRow(
              text: NAME,
              icon: Icons.person,
            ),
            MyBCRow(
              text: PHONE_NUMBER,
              icon: Icons.phone,
            ),
            InkWell(
              onTap: () {launch(GITHUB_PROFILE);},
              child: MyBCRow(
                text: GITHUB_PROFILE,
                icon: FontAwesomeIcons.github,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}

class MyBCRow extends StatelessWidget {
  const MyBCRow({
    Key key,
    @required this.text,
    @required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  static const TextStyle GLOBAL_TEXT_STYLE = TextStyle(
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 15,
        ),
        Text(
          text,
          style: GLOBAL_TEXT_STYLE,
          textWidthBasis: TextWidthBasis.longestLine,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
