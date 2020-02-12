import 'package:flutter/material.dart';

class AlignConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Align Concept"),
      ),
      body: _alignArea(),
    );
  }

  Widget _alignArea() {
    return Align(
      alignment: Alignment.topCenter,
      child: FlatButton(
        color: Colors.blue,
        onPressed: () {
          print("print");
        },
        child: Text("Flat Button"),
      ),
    );
  }
}
