import 'package:flutter/material.dart';

class StaggeredExample1Animator extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> avatarOpacityAnimation;
  final Animation<double> avatarSizeAnimation;
  final Animation<double> dividerWidthAnimation;
  final Animation<double> profileOpacityAnimation;
  final Animation<double> profileHeightAnimation;
  final Animation<double> profileWidthAnimation;
  final Animation<double> profileTextOpacityAnimation;

  StaggeredExample1Animator({Key key, this.controller})
      : avatarOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.1, 0.4, curve: Curves.ease))),
        avatarSizeAnimation = Tween(begin: 10.0, end: 80.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.1, 0.4, curve: Curves.elasticOut))),
        dividerWidthAnimation = Tween(begin: 500.0, end: 5.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.40, 0.55, curve: Curves.fastOutSlowIn))),
        profileOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.55, 0.75))),
        profileWidthAnimation = Tween(begin: 1.0, end: 400.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.60, 0.85))),
        profileHeightAnimation = Tween(begin: 5.0, end: 370.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.1, 0.35))),
        profileTextOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.8, 0.95))),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildLayout);
  }

  Widget _buildLayout(BuildContext context, Widget child) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Opacity(
              opacity: avatarOpacityAnimation.value,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                              .withOpacity(avatarOpacityAnimation.value)),
                    ),
                    CircleAvatar(
                      radius: avatarSizeAnimation.value,
                      backgroundImage: NetworkImage(
                          "https://avatars1.githubusercontent.com/u/14989228?s=400&u=097fb09dc4595bd025e2c6925ba00f0c9c794918&v=4"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 20),
              child: Divider(
                thickness: 1.5,
                height: 0,
                color: Colors.blue,
                indent: 5,
                endIndent: dividerWidthAnimation.value,
              ),
            ),
            Opacity(
              opacity: profileOpacityAnimation.value,
              child: Container(
                color: Colors.blue,
                width: profileWidthAnimation.value,
                height: profileHeightAnimation.value,
                child: Center(
                    child: Opacity(
                  opacity: profileTextOpacityAnimation.value,
                  child: Text(
                    "Your Profile Section",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
