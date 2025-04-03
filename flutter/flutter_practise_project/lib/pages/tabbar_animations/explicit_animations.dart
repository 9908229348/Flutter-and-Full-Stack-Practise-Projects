import 'dart:ui';

import 'package:flutter/material.dart';

class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({super.key});

  @override
  State<ExplicitAnimations> createState() => _ExplicitAnimationsState();
}

class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with TickerProviderStateMixin {
  late AnimationController _animationController1;
  late Animation<double> _scaleAnimation;
  late AnimationController _animationController2;
  late Animation<double> _blurAnimation;

  @override
  void initState() {
    _animationController1 = AnimationController(
      vsync: this,
      duration: Durations.extralong4,
    );
    _animationController2 = AnimationController(
      vsync: this,
      duration: Durations.extralong4,
    )..repeat(reverse: true);
    _scaleAnimation = Tween<double>(begin: 1, end: 5).animate(CurvedAnimation(
      parent: _animationController1,
      curve: Curves.easeInBack,
    ));
    _blurAnimation = Tween<double>(begin: 0.01, end: 1).animate(CurvedAnimation(
      parent: _animationController2,
      curve: Curves.bounceOut,
    ));
    super.initState();
  }

  @override
  void dispose() {
    _animationController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_animatedContainerExample(), _animatedBuilder()],
      ),
    );
  }

  Widget _animatedContainerExample() {
    return SizedBox(
      width: 500,
      child: Column(
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  _animationController1.forward();
                },
                child: Text('Forward'),
              ),
              MaterialButton(
                onPressed: () {
                  _animationController1.reverse();
                },
                child: Text('Reverse'),
              ),
              MaterialButton(
                onPressed: () {
                  _animationController1.stop();
                },
                child: Text('Stop'),
              ),
              MaterialButton(
                onPressed: () {
                  _animationController1.reset();
                },
                child: Text('Reset'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _animatedBuilder() {
    return AnimatedBuilder(
      animation: _blurAnimation,
      builder: (BuildContext context, Widget? child) {
        return SizedBox(
          height: 200,
          width: 200,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: _blurAnimation.value,
              sigmaY: _blurAnimation.value,
            ),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.pexels.com/photos/3874511/pexels-photo-3874511.jpeg?auto=compress&cs=tinysrgb&w=400',
              ),
            ),
          ),
        );
      },
    );
  }
}
