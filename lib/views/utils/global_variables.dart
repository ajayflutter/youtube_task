import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalVariables {
  static navigateToPage({required BuildContext context, required Widget page}) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => page));
  }

  static customSnackbar(
      {required BuildContext context,
      required String title,
      bool? successColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      duration: const Duration(seconds: 2),
      content: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: successColor == true ? Colors.green : Colors.redAccent,
      action: SnackBarAction(
        disabledTextColor: Colors.white,
        label: "Ok",
        textColor: Colors.grey.shade100,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ));
  }

  static String policyText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam ultrices sagittis orci a scelerisque purus semper. Iaculis nunc sed augue lacus. Id donec ultrices tincidunt arcu. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus. Velit aliquet sagittis id consectetur purus ut. Maecenas pharetra convallis posuere morbi leo. Odio morbi quis commodo odio aenean sed. Diam vel quam elementum pulvinar etiam non. Convallis a cras semper auctor neque";
}
