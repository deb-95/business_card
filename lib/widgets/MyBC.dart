import 'package:business_card/widgets/MyBiography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyBC extends StatefulWidget {
  @override
  _MyBCState createState() => _MyBCState();
}

class _MyBCState extends State<MyBC> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          // animation
          print("tapped!");

        },
        onDoubleTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyBiography(),
            ),
          );
        },
        child: AnimatedContainer(
          height: 300,
          width: 300,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          padding: EdgeInsets.all(5),
          child: MyBCCard(),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(10.0),
          ),
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
        ),
      ),
    );
  }
}

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
              icon: Icons.pregnant_woman,
            ),
            MyBCRow(
              text: PHONE_NUMBER,
              icon: Icons.phone,
            ),
            MyBCRow(
              text: GITHUB_PROFILE,
              icon: Icons.settings,
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
