import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

AspectRatio videoPlayerArea({required VideoPlayerController videoPlayerController}) {
  return AspectRatio(
    aspectRatio: videoPlayerController.value.aspectRatio,
    child: VideoPlayer(videoPlayerController),
  );
}
