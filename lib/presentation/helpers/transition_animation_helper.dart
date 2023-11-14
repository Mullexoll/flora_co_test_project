import 'package:flutter/material.dart';

class TransitionAnimationHelper extends StatelessWidget {
  final Widget child;
  final Animation animation;

  const TransitionAnimationHelper({
    super.key,
    required this.child,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    const curve = Curves.easeOut;
    var begin = const Offset(1.0, 0.0);
    var end = Offset.zero;
    var curveTween = CurveTween(curve: curve);
    var tween = Tween(begin: begin, end: end).chain(curveTween);

    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
