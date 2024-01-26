import 'package:flutter/material.dart';

class GenericConditionalBuilder<T> {
  final bool condition;
  final T onBuild;
  final T onFeedBack;

   GenericConditionalBuilder({
    required this.condition,
    required this.onBuild,
     required this.onFeedBack,
  });

  T get build {
    if (condition) {
      return onBuild;
    } else {
      return onFeedBack;
    }
  }
}


class ConditionalBuilder extends StatelessWidget {
  final bool condition;
  final Widget onBuild;
  final Widget? onFeedBack;

  const ConditionalBuilder({
    Key? key,
    required this.condition,
    required this.onBuild,
    this.onFeedBack,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Widget? widgetIs;
    if (onFeedBack == null) {
      if (condition == true) {
        widgetIs = onBuild;
      }
    } else {
      if (condition == true) {
        widgetIs = onBuild;
      } else {
        widgetIs = onFeedBack;
      }
    }
    return widgetIs ?? const SizedBox.shrink();
  }
}
