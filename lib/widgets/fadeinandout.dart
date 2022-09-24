import 'package:flutter/material.dart';

class ShowHideWidget extends StatefulWidget {
  final bool isShown;
  Widget? child;
  Duration? duration;
  ShowHideWidget({
    Key? key,
    required this.isShown,
    this.child,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  State<ShowHideWidget> createState() => _ShowHideWidgetState();
}

class _ShowHideWidgetState extends State<ShowHideWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isShown ? 1.0 : 0.0,
      duration: widget.duration!,
      child: widget.child,
    );
  }
}
