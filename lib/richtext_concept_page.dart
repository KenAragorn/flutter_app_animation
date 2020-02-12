import 'package:flutter/material.dart';

class RichTextConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text Concept"),
      ),
      body: Center(child: _richTextArea()),
    );
  }

  Widget _richTextArea() {
    return RichText(
        text: TextSpan(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            children: [
          TextSpan(text: "So, this is how we "),
          TextSpan(
            text: "style ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontStyle: FontStyle.italic,
                fontSize: 30),
          ),
          TextSpan(text: "in Flutter. "),
        ]));
  }
}
