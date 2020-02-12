import 'package:flutter/material.dart';
import 'package:flutter_app_animation/animation/staggered/example1/staggered_example1_animator.dart';

class StaggeredAnimationExample1Screen extends StatefulWidget {
  @override
  _StaggeredAnimationExample1ScreenState createState() =>
      _StaggeredAnimationExample1ScreenState();
}

class _StaggeredAnimationExample1ScreenState
    extends State<StaggeredAnimationExample1Screen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(milliseconds: 3500), vsync: this);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Animation Example 1"),
      ),
      body: SingleChildScrollView(child: _buildBodyArea()),
    );
  }

  Widget _buildBodyArea() {
    return StaggeredExample1Animator(
      controller: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
