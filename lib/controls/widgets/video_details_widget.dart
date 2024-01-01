import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/video_data.dart';

Container videoDetailsArea(BuildContext context,
    AsyncSnapshot<Autogenerated> snapshot, int index, String formatDate) {
  return Container(
    height: MediaQuery.of(context).size.height * .09,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            child: Image.network(snapshot.data!.results![index].channelImage!),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * .08,
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${snapshot.data!.results![index].title}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.tiroBangla(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${snapshot.data!.results![index].viewers} Views • $formatDate',
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.more_vert,
          color: Colors.grey,
        ),
      ],
    ),
  );
}