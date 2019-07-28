import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'MyBCCard.dart';

class RotatingContainer extends StatelessWidget {
  const RotatingContainer({
    Key key,
    @required AnimationController controller,
  })  : _controller = controller,
        super(key: key);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(_controller),
      child: Container(
        height: 300,
        width: 300,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.all(5),
        child: MyBCCard(),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
