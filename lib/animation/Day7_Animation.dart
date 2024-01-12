import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class AnimationDay7 extends StatelessWidget {
  final double delay;
  final Widget child;
  AnimationDay7(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween<AniProps>() // <== ISSUE IS HERE
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0))
      ..add(AniProps.translateY, Tween(begin: 160.0, end: 0.0),
          const Duration(milliseconds: 1000), Curves.bounceOut);

    return PlayAnimation<MultiTweenValues<AniProps>>(
      // <== ISSUE IS ALSO HERE
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: _tween.duration,
      tween: _tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(AniProps.opacity),
        child: Transform.translate(
            offset: Offset(0, animation.get(AniProps.translateY)),
            child: child),
      ),
    );
  }
}
