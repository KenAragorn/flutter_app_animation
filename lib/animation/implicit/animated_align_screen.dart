import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  @override
  _AnimatedAlignScreenState createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Align"),
      ),
      body: _layoutArea(),
    );
  }

  Widget _layoutArea() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: Text(
            "To trigger the alignment animation, click on the green square widget",
            style: TextStyle(fontSize: 22),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.lightBlueAccent,
              ),
            ),
            Expanded(
              child: AnimatedAlign(
                alignment: _isOn ? Alignment.centerRight : Alignment.centerLeft,
                duration: Duration(seconds: 1),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isOn = !_isOn;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
