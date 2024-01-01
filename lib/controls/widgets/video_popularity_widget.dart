import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action_button_widget.dart';

Padding videoPopularityArea() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        actionButton(
            text: 'MASH ALLAH (12K)', iconData: CupertinoIcons.heart),
        actionButton(
            text: 'LIKE (12K)', iconData: CupertinoIcons.hand_thumbsup),
        actionButton(text: 'SHARE', iconData: Icons.share),
        actionButton(text: 'REPORT', iconData: CupertinoIcons.flag),
      ],
    ),
  );
}
