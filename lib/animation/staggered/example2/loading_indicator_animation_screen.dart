import 'package:flutter/material.dart';
import 'package:flutter_app_animation/animation/staggered/example2/loading_indicator_animator.dart';

class LoadingIndicatorAnimationScreen extends StatefulWidget {
  @override
  _LoadingIndicatorAnimationScreenState createState() =>
      _LoadingIndicatorAnimationScreenState();
}

class _LoadingIndicatorAnimationScreenState
    extends State<LoadingIndicatorAnimationScreen>
    with TickerProviderStateMixin {
  AnimationController _repeatController;
  AnimationController _reverseController;

  @override
  void initState() {
    super.initState();
    _repeatController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);

    _reverseController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);

    _repeatController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _repeatController.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _repeatController.forward();
      }
    });

    _reverseController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _reverseController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _reverseController.forward();
      }
    });

    _repeatController.forward();
    _reverseController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Animations Example 2")),
      body: _buildBodyArea(),
    );
  }

  Widget _buildBodyArea() {
    return LoadingIndicatorAnimator(
      repeatController: _repeatController,
      reverseController: _reverseController,
    );
  }

  @override
  void dispose() {
    _repeatController.dispose();
    _reverseController.dispose();
    super.dispose();
  }
}
