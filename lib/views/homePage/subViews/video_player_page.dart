import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:video_player/video_player.dart';

import '../../../controls/widgets/channel_banner_widget.dart';
import '../../../controls/widgets/comment_count_widget.dart';
import '../../../controls/widgets/comment_review_widget.dart';
import '../../../controls/widgets/comments_area_widget.dart';
import '../../../controls/widgets/video_player_widget.dart';
import '../../../controls/widgets/video_popularity_widget.dart';
import '../../../controls/widgets/video_title_widget.dart';
import '../../../controls/widgets/video_views_widget.dart';
import '../../../models/result_model.dart';

class VideoPlayerPage extends StatefulWidget {
  final Results results;

  const VideoPlayerPage({super.key, required this.results});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController videoPlayerController;
  bool videoPlaying = false;
  String dayBefore = '';

  void setDayBefore() {
    String givenDateString = widget.results.dateAndTime!;
    DateTime givenDate = DateTime.parse(givenDateString);

    DateTime currentDate = DateTime.now();
    dayBefore = formatTimeDifference(givenDate, currentDate);
  }

  String formatTimeDifference(DateTime givenDate, DateTime currentDate) {
    Duration difference = currentDate.difference(givenDate);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} Seconds Ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} Minutes Ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} Hours Ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} Days Ago';
    } else if (difference.inDays < 30) {
      int weeks = (difference.inDays / 7).floor();
      return '$weeks Weeks Ago';
    } else if (difference.inDays < 365) {
      int months = (difference.inDays / 30).floor();
      return '$months Months Ago';
    } else {
      int years = (difference.inDays / 365).floor();
      return '$years Years Ago';
    }
  }

  Future<void> initializeVideoPlayerController() async {
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.results.manifest!))
          ..initialize().then((value) {
            setState(() {
              videoPlayerController.play();
              videoPlaying = true;
            });
          });
  }

  @override
  void initState() {
    initializeVideoPlayerController();
    setDayBefore();
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: videoPlaying
          ? ListView(
              children: [
                Stack(
                  children: [
                    videoPlayerArea(
                        videoPlayerController: videoPlayerController),
                    Positioned(
                      top: 2,
                      left: 2,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
                videoTitleArea(title: widget.results.title!),
                videoViewsArea(
                    viewers: widget.results.viewers!, dayBefore: dayBefore),
                videoPopularityArea(),
                channelBanner(
                    channelSubscriber: widget.results.channelSubscriber!,
                    channelName: widget.results.channelName!,
                    channelImage: widget.results.channelImage!),
                const SizedBox(height: 10),
                const Divider(),
                commentsCounter(),
                commentsArea(),
                const SizedBox(height: 10),
                commentReview(context),
                const Divider(),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
