// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:youtube/youtube_thumbnail.dart';
import 'package:youtube_widget/views/youtube_page.dart';

class YoutubeListPage extends StatefulWidget {
  List<String> videoLists;
  YoutubeListPage({
    Key? key,
    required this.videoLists,
  }) : super(key: key);

  @override
  State<YoutubeListPage> createState() => _YoutubeListPageState();
}

class _YoutubeListPageState extends State<YoutubeListPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("showing youtube  videos list ")),
      body: GridView.builder(
        itemCount: widget.videoLists.length,
        itemBuilder: (c, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => YoutubePage(
                          isSingleVideo: true,
                          singleVideoId: widget.videoLists[i]))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  YoutubeThumbnail(youtubeId: widget.videoLists[i])
                      .standard()
                      .toString(),
                  height: size.height * .2,
                  width: size.width * .5,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
