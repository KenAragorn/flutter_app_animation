import 'package:flutter/material.dart';

class ExpandedConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Testing"),
      ),
      body: _expandedLayer(),
    );
  }

  Widget _expandedLayer() {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
              color: Colors.orangeAccent,
              onPressed: () => {print("Hi")},
              child: Text("Btn A")),
          Expanded(flex: 2,
            child: FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: () => {print("Hi")},
                child: Text("Btn B")),
          ),
          FlatButton(
              color: Colors.orangeAccent,
              onPressed: () => {print("Hi")},
              child: Text("Btn C")),
        ],
      ),
    );
  }
}
