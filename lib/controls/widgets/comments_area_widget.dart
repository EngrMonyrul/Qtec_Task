import 'package:flutter/material.dart';

Padding commentsArea() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey),
      ),
      child: const TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: 'Add Comment',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(
            Icons.send,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
