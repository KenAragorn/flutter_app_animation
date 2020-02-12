import 'package:flutter/material.dart';

class BasicStaggeredAnimator extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> opacityAnimation;
  final Animation<double> widthAnimation;
  final Animation<double> heightAnimation;
  final Animation<EdgeInsets> paddingAnimation;
  final Animation<BorderRadius> borderRadiusAnimation;
  final Animation<Color> colorAnimation;

  BasicStaggeredAnimator({Key key, this.controller})
      : opacityAnimation = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(
            0,
            0.1,
            curve: Curves.easeIn,
          ),
        )),
        widthAnimation = Tween(
          begin: 50.0,
          end: 150.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.125,
            0.250,
            curve: Curves.easeIn,
          ),
        )),
        heightAnimation = Tween(
          begin: 50.0,
          end: 150.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.250,
            0.375,
            curve: Curves.easeIn,
          ),
        )),
        paddingAnimation = EdgeInsetsTween(
            begin: EdgeInsets.only(
              bottom: 15,
            ),
            end: EdgeInsets.only(
              bottom: 75,
            )).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.250, 0.375),
        )),
        borderRadiusAnimation = BorderRadiusTween(
          begin: BorderRadius.circular(5),
          end: BorderRadius.circular(75),
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.375, 0.5),
        )),
        colorAnimation = ColorTween(
          begin: Colors.white,
          end: Colors.green,
        ).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.5,
              0.75,
            ))),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller, builder: _buildAnimationComponent);
  }

  Widget _buildAnimationComponent(BuildContext context, Widget child) {
    return Container(
      padding: paddingAnimation.value,
      alignment: Alignment.bottomCenter,
      child: Opacity(
        opacity: opacityAnimation.value,
        child: Container(
          width: widthAnimation.value,
          height: heightAnimation.value,
          decoration: BoxDecoration(
              color: colorAnimation.value,
              borderRadius: borderRadiusAnimation.value),
        ),
      ),
    );
  }
}
