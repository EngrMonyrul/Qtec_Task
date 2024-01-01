import 'package:flutter/material.dart';

Padding channelBanner({required String channelImage, required String channelName, required String channelSubscriber}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: Image.network(channelImage)),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              channelName,
              style:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(channelSubscriber + ' Subscribers'),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Text(
            '+ Subscribe',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
