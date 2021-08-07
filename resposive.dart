import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive extends StatelessWidget {
  final Widget large;
  final Widget medium;
  final Widget small;

  Responsive({Key key, this.large,  this.medium, this.small})
      : super(key: key);
  static bool isSmall(BuildContext context) {
    return MediaQuery.of(context).size.width < 702;
  }

  static bool isMedium(BuildContext context) {
    return MediaQuery.of(context).size.width > 702 &&
        MediaQuery.of(context).size.width > 1022;
  }

  static bool isLarge(BuildContext context) {
    return MediaQuery.of(context).size.width > 1022 &&
        MediaQuery.of(context).size.width < 1704;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth > 1022 && constrain.maxWidth < 1074) {
        return large;
      } else if (constrain.maxWidth > 702 && constrain.maxWidth < 1022) {
        return medium ?? large;
      } else {
        return small ?? large;
      }
    });
  }
}
