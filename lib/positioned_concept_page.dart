import 'package:flutter/material.dart';

class PositionedConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Positioned Concept Page"),
      ),
      body: Center(child: _positionedArea()),
    );
  }

  Widget _positionedArea() {
    return Stack(
      children: <Widget>[
        FlutterLogo(
          colors: Colors.orange,
          size: 144,
        ),
        Positioned(
          top: 10,
          right: 25,
          child: FlutterLogo(
            colors: Colors.blue,
            size: 48,
          ),
        )
      ],
    );
  }
}
