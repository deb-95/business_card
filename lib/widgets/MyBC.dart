import 'package:business_card/widgets/MyBiography.dart';
import 'package:business_card/widgets/RotatingContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBC extends StatefulWidget {
  @override
  _MyBCState createState() => _MyBCState();
}

class _MyBCState extends State<MyBC> with SingleTickerProviderStateMixin {
//  Animation<double> animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
//    final tween = Tween<double>(
//      begin: 0,
//      end: 300,
//    );
//    animation = tween.animate(controller)
//      ..addListener(() {
//        setState(() {});
//      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          _controller.forward()
          // ??? works but not sure
          ..whenComplete(() => _controller.reset());
        },
        onDoubleTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyBiography(),
            ),
          );
        },
        child: RotatingContainer(controller: _controller),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
