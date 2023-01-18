import 'dart:math';

import 'package:flutter/material.dart';
import 'package:youtube_widget/views/faq/faq_page.dart';
import 'package:youtube_widget/views/privacy%20policy/privacy_policy.dart';
import 'package:youtube_widget/views/utils/global_variables.dart';
import 'package:youtube_widget/views/youtube_list_page.dart';
import 'package:youtube_widget/views/youtube_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  List<String> _videoIds = <String>[
    'tcodrIK2P_I',
    'H5v3kku4y6Q',
    'nPt8bK2gbaU',
    'K18cpp_-gP8',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          TextButton(
              onPressed: () {
                GlobalVariables.navigateToPage(
                    context: context, page: const PrivacyPolicyPage());
              },
              child: const Text(
                "Privacy Page",
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            width: 10,
          ),
          TextButton(
              onPressed: () {
                GlobalVariables.navigateToPage(
                    context: context, page: const FaqPage());
              },
              child: const Text(
                "FAQ Page",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  GlobalVariables.navigateToPage(
                      context: context,
                      page: YoutubePage(
                        isSingleVideo: true,
                        singleVideoId:
                            _videoIds[Random().nextInt(_videoIds.length)],
                      ));
                },
                child: const Text("Play Single video")),
            const SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
                onPressed: () {
                  GlobalVariables.navigateToPage(
                      context: context,
                      page: YoutubeListPage(videoLists: _videoIds));
                },
                child: const Text("Show List of youtube videos")),
            const SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
                onPressed: () {
                  GlobalVariables.navigateToPage(
                      context: context,
                      page: YoutubePage(
                          isSingleVideo: false, videoIds: _videoIds));
                },
                child: const Text("Play List of youtube videos")),
          ],
        ),
      ),
    );
  }
}
