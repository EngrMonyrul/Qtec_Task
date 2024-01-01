import 'package:flutter/material.dart';

Padding videoViewsArea({required String viewers, required dayBefore}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
    child: Text('$viewers Views • $dayBefore'),
  );
}
