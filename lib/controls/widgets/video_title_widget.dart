import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Padding videoTitleArea({required String title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
    child: Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style:
      GoogleFonts.tiroBangla(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
