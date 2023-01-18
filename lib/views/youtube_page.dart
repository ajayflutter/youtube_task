// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePage extends StatefulWidget {
  final bool isSingleVideo;
  String? singleVideoId;
  List<String>? videoIds;
  YoutubePage({
    Key? key,
    required this.isSingleVideo,
    this.singleVideoId,
    this.videoIds,
  }) : super(key: key);

  @override
  State<YoutubePage> createState() => YoutubePageState();
}

class YoutubePageState extends State<YoutubePage> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    //* initializing the controller
    _youtubePlayerController = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    widget.isSingleVideo == true
        ? _youtubePlayerController.loadVideoById(
            videoId: widget.singleVideoId.toString())
        : _youtubePlayerController.loadPlaylist(
            list: widget.videoIds!,
            listType: ListType.playlist,
            startSeconds: 136,
          );
    super.initState();
  }

//   _controller.loadVideoById(...); // Auto Play
// _controller.cueVideoById(...); // Manual Play
// _controller.loadPlaylist(...); // Auto Play with playlist
// _controller.cuePlaylist(...); // Manual Play with playlist

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      builder: ((context, player) {
        return Scaffold(
          appBar: AppBar(
              title: Text(widget.isSingleVideo
                  ? "Playing Single Video"
                  : "Playing Multiple Videos")),
          body: player,
        );
      }),
      controller: _youtubePlayerController,
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.close();
    super.dispose();
  }
}
