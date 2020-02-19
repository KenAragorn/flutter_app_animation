import 'package:flutter/material.dart';

enum ClipType {
  triangleType1,
  triangleType2,
  triangleType3,
  bezierType,
  arcType,
  backgroundType
}

class CustomClipperSelectionPage extends StatelessWidget {
  static String imagePath =
      "https://images.unsplash.com/photo-1528072164453-f4e8ef0d475a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Clipper"),
      ),
      body: SingleChildScrollView(
        child: _buildMainSection(context),
      ),
    );
  }

  Widget _buildMainSection(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomTriangleClipper(ClipType.backgroundType),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blueAccent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildCustomTriangleType1(),
              _buildCustomTriangleType2(),
              _buildCustomTriangleType3(),
              _buildCustomBezierType(),
              _buildCustomArcType(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCustomTriangleType1() {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Line draw from 0,0 -> bottom left -> top right ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              child: Image.network(imagePath),
              clipper: CustomTriangleClipper(ClipType.triangleType1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomTriangleType2() {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Line draw from top left -> bottom right -> bottom left ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              child: Image.network(imagePath),
              clipper: CustomTriangleClipper(ClipType.triangleType2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomTriangleType3() {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Line draw 0,0 -> top right -> center -> top left ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              child: Image.network(imagePath),
              clipper: CustomTriangleClipper(ClipType.triangleType3),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomBezierType() {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bezier draw 0,0 -> bottom left -> control point 1 -> end point 1 -> control point 2 -> end point 2 -> top left ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              child: Image.network(imagePath),
              clipper: CustomTriangleClipper(ClipType.bezierType),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomArcType() {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Arc draw 0,0 -> bottom left -> bottom right ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              child: Image.network(imagePath),
              clipper: CustomTriangleClipper(ClipType.arcType),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  final ClipType clipType;

  CustomTriangleClipper(this.clipType);

  @override
  Path getClip(Size size) {
    Path path = Path(); //path starting position will be always 0,0.

    if (clipType == ClipType.triangleType1) {
      createTriangleType1(size, path);
    } else if (clipType == ClipType.triangleType2) {
      createTriangleType2(size, path);
    } else if (clipType == ClipType.triangleType3) {
      createTriangleType3(size, path);
    } else if (clipType == ClipType.bezierType) {
      createBezierType(size, path);
    } else if (clipType == ClipType.arcType) {
      createArc(size, path);
    } else if (clipType == ClipType.backgroundType) {
      createBackgroundType(size, path);
    }
    path.close();

    return path;
  }

  createBezierType(Size size, Path path) {
    path.lineTo(0, size.height);

    var firstEndPoint = Offset(size.width / 2, size.height - 35);
    var firstControlPoint = Offset(size.width / 4, size.height * 0.75);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height / 2 - 50);
    var secondControlPoint = Offset(size.width, size.height + 15);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
  }

  createTriangleType1(Size size, Path path) {
    path.lineTo(0, size.height); //this will draws a line from 0,0 to 100,0.
    path.lineTo(size.width, 0);
  }

  createTriangleType2(Size size, Path path) {
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
  }

  createTriangleType3(Size size, Path path) {
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height / 2);
//    path.lineTo(0, size.height);
  }

  createArc(Size size, Path path) {
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
  }

  createBackgroundType(Size size, Path path) {
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height / 1.5);
    path.lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
