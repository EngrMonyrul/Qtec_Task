import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding commentsCounter() {
  return const Padding(
    padding: EdgeInsets.all(12.0),
    child: Row(
      children: [
        Text(
          'Comments 7.5K',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        Spacer(),
        Icon(
          CupertinoIcons.arrow_up_down,
          color: Colors.grey,
          size: 20,
        )
      ],
    ),
  );
}
