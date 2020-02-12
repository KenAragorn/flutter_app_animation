import 'package:flutter/material.dart';

class ClipConceptPage extends StatelessWidget {
  final String imgPath =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTckTBGSPTor8Bcc_vHZM6-OFNE6lr0BkCRQUFdLnTFC83uPA2S";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Concept"),
      ),
      body: _buildClip(),
    );
  }

  Widget _buildClip() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Align(
          heightFactor: 0.5,
          widthFactor: 0.5,
          child: Image.network(imgPath),
        ),
      ),
    );
  }
}
