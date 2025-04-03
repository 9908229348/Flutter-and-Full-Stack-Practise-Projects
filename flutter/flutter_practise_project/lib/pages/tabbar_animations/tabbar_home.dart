import 'package:flutter/material.dart';
import 'package:flutter_practise_project/pages/tabbar_animations/explicit_animations.dart';
import 'package:flutter_practise_project/pages/tabbar_animations/implicit_animation.dart';

class TabbarHome extends StatefulWidget {
  const TabbarHome({super.key});

  @override
  State<TabbarHome> createState() => _TabbarHomeState();
}

class _TabbarHomeState extends State<TabbarHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Implicit animations'),
                ),
                Tab(
                  child: Text('Explicit animations'),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ImplicitAnimation(),
              ExplicitAnimations(),
            ],
          ),
        ),
      ),
    );
  }
}
