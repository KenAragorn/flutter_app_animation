import 'package:flutter/material.dart';

class FitterBoxConceptPage extends StatelessWidget {
  final String imgPath =
      "https://images.unsplash.com/photo-1538370965046-79c0d6907d47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjI0MX0&w=1000&q=80";

  @override
  Widget build(BuildContext context) {
    return _fitterBoxSection();
  }

  Widget _fitterBoxSection() {
    return FittedBox(
      fit: BoxFit.cover,
      child: Image.network(imgPath),
    );
  }
}
