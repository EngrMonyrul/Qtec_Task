import 'package:flutter/material.dart';

Padding commentReview(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.lightBlueAccent,
          child: Text('FK'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  'Fahmida Khanom',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 10),
                Text(
                  '2 days ago',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: const Text(
                'হুজুরের বক্তব্য গুলো ইংরেজি তে অনুবাদ করে সারা পৃথিবীর মানুষদের কে শুনিয়ে দিতে হবে। কথা গুলো খুব দামি',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        )
      ],
    ),
  );
}
