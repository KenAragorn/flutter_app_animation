import 'package:flutter/material.dart';

class LinearGradientConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _linearGradientArea(),
    );
  }

  Widget _linearGradientArea() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(20, 65, 86, 1), Color.fromRGBO(0, 27, 45, 1)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Center(
        child: Text(
          "Some Text Here",
          style: TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(83, 211, 185, 1),
          ),
        ),
      ),
    );
  }
}
