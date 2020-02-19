import 'package:flutter/material.dart';
import 'package:flutter_app_animation/align_concept_page.dart';
import 'package:flutter_app_animation/animation/animation_core_screen.dart';
import 'package:flutter_app_animation/animation/implicit/animated_align_screen.dart';
import 'package:flutter_app_animation/animation/implicit/animated_container_screen.dart';
import 'package:flutter_app_animation/animation/staggered/basic_staggered_animation_screen.dart';
import 'package:flutter_app_animation/animation/staggered/example1/staggered_animation_example1_screen.dart';
import 'package:flutter_app_animation/animation/staggered/example2/loading_indicator_animation_screen.dart';
import 'package:flutter_app_animation/clip_concept_page.dart';
import 'package:flutter_app_animation/clipper/custom_clipper_selection_page.dart';
import 'package:flutter_app_animation/expanded_concept_page.dart';
import 'package:flutter_app_animation/fittedbox_concept_page.dart';
import 'package:flutter_app_animation/flexible_concept_page.dart';
import 'package:flutter_app_animation/linear_gradient_concept_page.dart';
import 'package:flutter_app_animation/positioned_concept_page.dart';
import 'package:flutter_app_animation/reorderable_list_view_concept_page.dart';
import 'package:flutter_app_animation/richtext_concept_page.dart';
import 'package:flutter_app_animation/sliver_app_bar_concept_page.dart';
import 'package:flutter_app_animation/wrap_concept_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/staggered': (BuildContext context) =>
            StaggeredAnimationExample1Screen(),
        '/multipleTweens': (BuildContext context) =>
            LoadingIndicatorAnimationScreen(),
        '/aligned': (BuildContext context) => AnimatedAlignScreen(),
        '/animatedContainer': (BuildContext context) =>
            AnimatedContainerScreen(),
        '/customClipper': (BuildContext context) =>
            CustomClipperSelectionPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildMainListForNavigation(context),
    );
  }

  Widget _buildMainListForNavigation(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildTopCard(context),
          _buildCenterCard(context),
          _buildBottomCard(context),
        ],
      ),
    );
  }

  Widget _buildTopCard(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Explicit Animation",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              elevation: 8,
              child: Text("Staggered Animation"),
              color: Colors.blue[300],
              onPressed: () {
                Navigator.of(context).pushNamed('/staggered');
              },
            ),
            RaisedButton(
              elevation: 8,
              child: Text("Multiple Tweens Animation"),
              color: Colors.blue[300],
              onPressed: () {
                Navigator.of(context).pushNamed('/multipleTweens');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterCard(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Implicit Animation",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              elevation: 8,
              child: Text("Animated Align Animation"),
              color: Colors.blue[300],
              onPressed: () {
                Navigator.of(context).pushNamed('/aligned');
              },
            ),
            RaisedButton(
              elevation: 8,
              child: Text("Animated Container Animation"),
              color: Colors.blue[300],
              onPressed: () {
                Navigator.of(context).pushNamed('/animatedContainer');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomCard(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Bonus Section - Custom Clipper",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              elevation: 8,
              child: Text("Custom Clipper"),
              color: Colors.blue[300],
              onPressed: () {
                Navigator.of(context).pushNamed('/customClipper');
              },
            ),
          ],
        ),
      ),
    );
  }
}
