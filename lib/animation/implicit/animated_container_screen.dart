import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool _changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: _buildLayoutArea(),
    );
  }

  Widget _buildLayoutArea() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Center(
            child: AnimatedContainer(
              width: _changeColor
                  ? MediaQuery.of(context).size.width * 0.35
                  : MediaQuery.of(context).size.width * 0.9,
              height: _changeColor
                  ? MediaQuery.of(context).size.width * 0.35
                  : MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.all(10),
              color: _changeColor ? Colors.indigoAccent : Colors.orange,
              duration: Duration(seconds: 2),
              child: Center(
                  child: Text(
                "Your Content Section",
              )),
            ),
          ),
        ),
        FlatButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                _changeColor = !_changeColor;
              });
            },
            child: Text("Click Here to Start Animation"))
      ],
    );
  }
}
