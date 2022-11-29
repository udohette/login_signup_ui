import 'package:flutter/material.dart';

class SliderRightRoute extends PageRouteBuilder {
  final Widget page;

  SliderRightRoute(this.page) :
        super(pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) => page,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation, Animation<double> secondaryAnimation,
              Widget child,) =>
              SlideTransition(
                position: Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero,)
                    .animate(animation), child: child,
              )
      );
}