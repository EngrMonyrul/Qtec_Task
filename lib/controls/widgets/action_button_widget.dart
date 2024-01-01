import 'package:flutter/material.dart';

InkWell actionButton({required IconData iconData, required String text}) {
  return InkWell(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(iconData),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
