import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_animation/animation/staggered/basic_staggered_animator.dart';

class StaggerAnimationScreen extends StatefulWidget {
  @override
  _StaggerAnimationScreenState createState() => _StaggerAnimationScreenState();
}

class _StaggerAnimationScreenState extends State<StaggerAnimationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);

    _controller.forward();

    //Adding Status Listener to reverse the animation once it completed
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Staggered Animation"),
      ),
      body: _buildAnimationComponent(),
    );
  }

  Widget _buildAnimationComponent() {
    return Center(
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        width: 300,
        height: 300,
        child: BasicStaggeredAnimator(
          controller: _controller,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
