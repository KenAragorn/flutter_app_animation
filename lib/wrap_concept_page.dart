import 'package:flutter/material.dart';

class WrapConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrapper Testing"),
      ),
      body: _wrapperLayer(),
    );
  }

  Widget _wrapperLayer() {
    return Center(
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 25,
        runSpacing: 25,
        children: <Widget>[
          Icon(Icons.account_balance),
          Icon(Icons.add_circle_outline),
          Icon(Icons.av_timer),
          Icon(Icons.add_shopping_cart),
          Icon(Icons.account_box),
          Icon(Icons.wb_sunny),
          Icon(Icons.local_pizza),
          Icon(Icons.wallpaper),
          Icon(Icons.wb_auto),
          Icon(Icons.tablet),
          Icon(Icons.track_changes),
          Icon(Icons.account_balance),
          Icon(Icons.add_circle_outline),
          Icon(Icons.av_timer),
          Icon(Icons.add_shopping_cart),
          Icon(Icons.account_box),
          Icon(Icons.wb_sunny),
          Icon(Icons.local_pizza),
          Icon(Icons.wallpaper),
          Icon(Icons.wb_auto),
          Icon(Icons.alarm),
        ],
      ),
    );
  }
}
