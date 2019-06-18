import 'package:flutter_web/material.dart';

/// Helper class for implementing a responsive layout.The parameter [largeChild] is required and must not be null.
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key key,
    @required this.largeChild,
    this.mediumChild,
    this.smallChild,
    this.largeBreakPoint = 1200.0,
    this.mediumBreakPoint = 800.0,
  })  : assert(largeChild != null),
        super(key: key);

  /// Child to be displayed when the width is greater than 1200.0
  final Widget largeChild;

  /// Widget to be displayed when the width is less than 1200 but greater than 800
  final Widget mediumChild;

  /// Widget to be displayed when the width is less than 800
  final Widget smallChild;

  final double largeBreakPoint;

  final double mediumBreakPoint;

  @override
  Widget build(BuildContext context) {
    final smallestWidth = MediaQuery.of(context).size.shortestSide;
    if (smallestWidth >= largeBreakPoint) {
      return largeChild;
    } else if (smallestWidth >= mediumBreakPoint) {
      return mediumChild ?? largeChild;
    } else {
      return smallChild ?? mediumChild ?? largeChild;
    }
  }
}

