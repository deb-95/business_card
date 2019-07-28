import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBiography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Theme.of(context).accentColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: Image.network(
                    "https://avatars1.githubusercontent.com/u/44870331?s=460&v=4",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Card(
                    elevation: 10,
                    child: Center(
                      child: Text(
                        "HELLO WORLD!",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
