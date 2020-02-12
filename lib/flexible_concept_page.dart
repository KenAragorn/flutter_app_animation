import 'package:flutter/material.dart';

class FlexibleConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Concept"),
      ),
      body: _flexibleArea(),
    );
  }

  Widget _flexibleArea() {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 10,
          child: Container(
            color: Colors.green,
            child: Center(child: Text("Top")),
          ),
        ),
        Spacer(flex: 1,),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.yellow,
            child: Center(child: Text("Center")),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.deepOrange,
            child: Center(child: Text("Bottom")),
          ),
        )
      ],
    );
  }
}
