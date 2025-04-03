import 'dart:ui';

import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  bool trigger = false;
  double blurValue = 0.01;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _animatedContainerExample(),
          _tweenAnimatedContainer(),
        ],
      ),
    );
  }

  Widget _animatedContainerExample() {
    return Column(
      children: [
        AnimatedContainer(
          height: 300,
          width: 300,
          curve: Curves.bounceIn,
          duration: Durations.long4,
          decoration: BoxDecoration(
            color: trigger ? Colors.yellow : Colors.pink,
            border: Border.all(
              color: trigger ? Colors.green : Colors.orange,
              width: 20,
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              trigger = !trigger;
            });
          },
          child: Text('Trigger'),
        )
      ],
    );
  }

  Widget _tweenAnimatedContainer() {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0.01,
              end: blurValue,
            ),
            duration: Durations.extralong4,
            builder: (
              BuildContext context,
              double? value,
              Widget? child,
            ) {
              return SizedBox(
                height: 200,
                width: 200,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: value ?? 0.01 * 40,
                    sigmaY: value ?? 0.01 * 40,
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
          ),
          Slider(
            value: blurValue,
            min: 0.01,
            max: 10,
            onChanged: (value) {
              setState(() {
                blurValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
