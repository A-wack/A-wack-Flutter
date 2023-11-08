import 'dart:math';

import 'package:flutter/material.dart';

/// 애니메이션 코드
class RotateAnimation extends StatefulWidget {
  final child;

  const RotateAnimation({Key? key, this.child}) : super(key: key);

  @override
  RotateAnimationState createState() => RotateAnimationState();
}

class RotateAnimationState extends State<RotateAnimation>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  bool forwardDirection = false;
  double rotationAngle = 0.0;
  double oldAngle = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 4000), vsync: this);
    animationController.value = 0.0;

    startRotateAnimation(false);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      rotationAngle = 0.0;
      oldAngle = 0.0;
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      child: TextButton(
        onPressed: () {},
        child: AnimatedBuilder(
          animation: animationController,
          child: widget.child,
          builder: (BuildContext context, Widget? _widget) {
            final value = animationController.value;
            double step = 0.0;
            step = (1.0 - oldAngle) + value;
            oldAngle = value;
            //
            /// +=로 바꾸면 반대로 회전
            rotationAngle -= step;
            final angle = rotationAngle * (pi * 2);
            return Transform.rotate(
              angle: angle,
              child: _widget,
            );
          },
        ),
      ),
    );
  }

  startRotateAnimation(bool direction) async {
    forwardDirection = direction;
    oldAngle = animationController.value;
    animationController.repeat();
  }

  isStopAnimation() {
    return !animationController.isAnimating;
  }

  stopRotateAnimation() {
    animationController.stop();
    setState(() {});
  }
}
