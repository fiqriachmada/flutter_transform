import 'package:flutter/cupertino.dart';

class FlipWidget extends StatefulWidget {
  Widget? child;

  FlipWidget({Key? key, this.child}) : super(key: key);

  @override
  State<FlipWidget> createState() => _FlipWidgetState();
}

class _FlipWidgetState extends State<FlipWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRect(
            child: Align(
          alignment: Alignment.topCenter,
          heightFactor: 0.5,
          child: widget.child,
        )),
        const Padding(
          padding: EdgeInsets.only(top: 2.0),
        ),
        ClipRect(
            child: Align(
          alignment: Alignment.bottomCenter,
          heightFactor: 0.5,
          child: widget.child,
        )),
      ],
    );
  }
}
