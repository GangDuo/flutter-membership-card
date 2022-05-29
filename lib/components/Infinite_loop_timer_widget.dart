import 'package:flutter/material.dart';

class InfiniteLoopTimerWidget extends StatelessWidget {
  final bool isVisible;

  const InfiniteLoopTimerWidget({
    Key? key,
    this.isVisible = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(isVisible) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "03:00",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          SizedBox(width: 16),
          Icon(
            Icons.refresh,
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}