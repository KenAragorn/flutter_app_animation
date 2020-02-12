import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoadingIndicatorAnimator extends StatelessWidget {
  final AnimationController repeatController;
  final AnimationController reverseController;
  final Animation<double> pulseIconWidthAnimation;
  final Animation<double> pulseIconOpacityAnimation;
  final Animation<double> doubleBounceIcon1WidthAnimation;
  final Animation<double> doubleBounceIcon2WidthAnimation;
  final Animation<double> threeBounce1IconSizeAnimation;
  final Animation<double> threeBounce2IconSizeAnimation;
  final Animation<double> threeBounce3IconSizeAnimation;
  final Animation<double> waveSize1Animation;
  final Animation<double> waveSize2Animation;
  final Animation<double> waveSize3Animation;
  final Animation<double> waveSize4Animation;
  final Animation<double> waveSize5Animation;
  final Animation<double> cubeGrid1SizeAnimation;
  final Animation<double> cubeGrid2SizeAnimation;
  final Animation<double> cubeGrid3SizeAnimation;
  final Animation<double> cubeGrid4SizeAnimation;
  final Animation<double> cubeGrid5SizeAnimation;
  final Animation<double> cubeGrid6SizeAnimation;
  final Animation<double> cubeGrid7SizeAnimation;
  final Animation<double> cubeGrid8SizeAnimation;
  final Animation<double> cubeGrid9SizeAnimation;
  final Animation<Alignment> wandering1CubeAlignmentAnimation;

  LoadingIndicatorAnimator(
      {Key key, this.repeatController, this.reverseController})
      : pulseIconWidthAnimation = Tween(begin: 0.0, end: 32.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.1, 0.9, curve: Curves.ease))),
        pulseIconOpacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.1, 0.9, curve: Curves.ease))),
        doubleBounceIcon1WidthAnimation = Tween(begin: 0.0, end: 32.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.1, 0.9, curve: Curves.easeInOut))),
        doubleBounceIcon2WidthAnimation = Tween(begin: 32.0, end: 0.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.1, 0.9, curve: Curves.easeInOut))),
        threeBounce1IconSizeAnimation = Tween(begin: 0.0, end: 8.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.15, 0.35, curve: Curves.easeInOut))),
        threeBounce2IconSizeAnimation = Tween(begin: 0.0, end: 8.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.35, 0.55, curve: Curves.easeInOut))),
        threeBounce3IconSizeAnimation = Tween(begin: 0.0, end: 8.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.55, 0.75, curve: Curves.easeInOut))),
        waveSize1Animation = Tween(begin: 15.0, end: 30.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.1, 0.3, curve: Curves.linear))),
        waveSize2Animation = Tween(begin: 15.0, end: 30.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.25, 0.45, curve: Curves.linear))),
        waveSize3Animation = Tween(begin: 15.0, end: 30.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.4, 0.6, curve: Curves.linear))),
        waveSize4Animation = Tween(begin: 15.0, end: 30.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.55, 0.75, curve: Curves.linear))),
        waveSize5Animation = Tween(begin: 15.0, end: 30.0).animate(
            CurvedAnimation(
                parent: reverseController,
                curve: Interval(0.7, 0.9, curve: Curves.linear))),
        cubeGrid1SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.4, 0.6, curve: Curves.linear))),
        cubeGrid2SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.55, 0.75, curve: Curves.linear))),
        cubeGrid3SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.7, 0.9, curve: Curves.linear))),
        cubeGrid4SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.25, 0.45, curve: Curves.linear))),
        cubeGrid5SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.4, 0.6, curve: Curves.linear))),
        cubeGrid6SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.55, 0.75, curve: Curves.linear))),
        cubeGrid7SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.1, 0.3, curve: Curves.linear))),
        cubeGrid8SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.25, 0.45, curve: Curves.linear))),
        cubeGrid9SizeAnimation = Tween(begin: 0.1, end: 10.0).animate(
            CurvedAnimation(
                parent: repeatController,
                curve: Interval(0.4, 0.6, curve: Curves.linear))),
        wandering1CubeAlignmentAnimation = TweenSequence<Alignment>([
          TweenSequenceItem<Alignment>(
              tween: AlignmentTween(
                  begin: Alignment.bottomLeft, end: Alignment.topLeft),
              weight: 1.0),
          TweenSequenceItem<Alignment>(
              tween: AlignmentTween(
                  begin: Alignment.topLeft, end: Alignment.topRight),
              weight: 1.0),
          TweenSequenceItem<Alignment>(
              tween: AlignmentTween(
                  begin: Alignment.topRight, end: Alignment.bottomRight),
              weight: 1.0),
          TweenSequenceItem<Alignment>(
              tween: AlignmentTween(
                  begin: Alignment.bottomRight, end: Alignment.bottomLeft),
              weight: 1.0),
        ]).animate(
            CurvedAnimation(parent: repeatController, curve: Curves.linear));

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: <Widget>[
        Container(
            width: 200,
            height: 200,
            color: Colors.grey,
            child: AnimatedBuilder(
                animation: repeatController, builder: _buildPulseWidget)),
        Container(
            width: 200,
            height: 200,
            color: Colors.black87,
            child: AnimatedBuilder(
                animation: repeatController,
                builder: _buildDoubleBounceWidget)),
        Container(
            width: 200,
            height: 200,
            color: Colors.deepOrange,
            child: AnimatedBuilder(
                animation: repeatController, builder: _buildThreeBounceWidget)),
        Container(
            width: 200,
            height: 200,
            color: Colors.greenAccent,
            child: AnimatedBuilder(
                animation: repeatController, builder: _buildWaveBounceWidget)),
        Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            child: AnimatedBuilder(
                animation: repeatController,
                builder: _buildCubeGridBounceWidget)),
        Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
            child: AnimatedBuilder(
                animation: repeatController,
                builder: _buildWanderingCubesWidget)),
      ],
    );
  }

  Widget _buildPulseWidget(BuildContext context, Widget child) {
    return Center(
      child: Container(
        width: pulseIconWidthAnimation.value,
        height: pulseIconWidthAnimation.value,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white70.withOpacity(pulseIconOpacityAnimation.value)),
      ),
    );
  }

  Widget _buildDoubleBounceWidget(BuildContext context, Widget child) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: doubleBounceIcon1WidthAnimation.value,
            height: doubleBounceIcon1WidthAnimation.value,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white70),
          ),
          Container(
            width: doubleBounceIcon2WidthAnimation.value,
            height: doubleBounceIcon2WidthAnimation.value,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildThreeBounceWidget(BuildContext context, Widget child) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: threeBounce1IconSizeAnimation.value,
              height: threeBounce1IconSizeAnimation.value,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: threeBounce2IconSizeAnimation.value,
              height: threeBounce2IconSizeAnimation.value,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
          Container(
            width: threeBounce3IconSizeAnimation.value,
            height: threeBounce3IconSizeAnimation.value,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildWaveBounceWidget(BuildContext context, Widget child) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Container(
              color: Colors.white,
              width: 5,
              height: waveSize1Animation.value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Container(
              color: Colors.white,
              width: 5,
              height: waveSize2Animation.value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Container(
              color: Colors.white,
              width: 5,
              height: waveSize3Animation.value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Container(
              color: Colors.white,
              width: 5,
              height: waveSize4Animation.value,
            ),
          ),
          Container(
            color: Colors.white,
            width: 5,
            height: waveSize5Animation.value,
          )
        ],
      ),
    );
  }

  Widget _buildCubeGridBounceWidget(BuildContext context, Widget child) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid1SizeAnimation.value,
                  height: cubeGrid1SizeAnimation.value,
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid2SizeAnimation.value,
                  height: cubeGrid2SizeAnimation.value,
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid3SizeAnimation.value,
                  height: cubeGrid3SizeAnimation.value,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid4SizeAnimation.value,
                  height: cubeGrid4SizeAnimation.value,
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid5SizeAnimation.value,
                  height: cubeGrid5SizeAnimation.value,
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid6SizeAnimation.value,
                  height: cubeGrid6SizeAnimation.value,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid7SizeAnimation.value,
                  height: cubeGrid7SizeAnimation.value,
                ),
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  width: cubeGrid8SizeAnimation.value,
                  height: cubeGrid8SizeAnimation.value,
                ),
              ),
              Container(
                color: Colors.white,
                width: cubeGrid9SizeAnimation.value,
                height: cubeGrid9SizeAnimation.value,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWanderingCubesWidget(BuildContext context, Widget child) {
    return Padding(
      padding: const EdgeInsets.all(42.0),
      child: Align(
        alignment: wandering1CubeAlignmentAnimation.value,
        child: Container(
          color: Colors.white,
          width: 10,
          height: 10,
        ),
      ),
    );
  }
}
