import 'package:flutter/material.dart';
import 'package:flutter_app_animation/animation/animated_logo.dart';

void main() => runApp(LogoApp());

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation
      animation; // this is an abstract class that interpolates the values used to guide an animation
  AnimationController controller; //this manages the Animation class

  @override
  void initState() {
    super.initState();

    //init the controller and animation classes
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
//    animation = Tween<double>(begin: 0, end: 300).animate(controller);
  animation = CurvedAnimation(parent: controller,curve: Curves.easeIn);

    animation.addStatusListener((state) {
      //to make it replay, we can depends on the statusListener for a particular status
      //that allows us when it completed the initial animation, so we can then
      //reverse or restart back the animation.
      if (state == AnimationStatus.completed) {
        controller.reverse();
      } else if (state == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    //to start the animation
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedLogo(
      animation: animation,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
