import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBiography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: Center(
          child: Container(
            color: Colors.pink,
            child: Text(
              "TODO",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
