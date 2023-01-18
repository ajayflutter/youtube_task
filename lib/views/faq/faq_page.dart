import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:youtube_widget/views/homepage.dart';
import 'package:youtube_widget/views/utils/global_variables.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("FAQ Page"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                GlobalVariables.policyText.toString(),
                textAlign: TextAlign.justify,
              ),
            )),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButton(
                  title: "Close",
                  bgColor: Colors.blueAccent,
                  context: context,
                  callback: () {
                    Navigator.pop(context);
                  },
                  textColor: Colors.white),
            ),
          )
          //* accept or decline button
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       customButton(
          //           context: context,
          //           title: "I accept",
          //           bgColor: Colors.blueAccent,
          //           callback: () {
          //             Navigator.of(context).pushAndRemoveUntil(
          //                 MaterialPageRoute(
          //                     builder: (context) => const HomePage()),
          //                 (Route<dynamic> route) => false);

          //             GlobalVariables.customSnackbar(
          //               context: context,
          //               title: "You are all set to use the app",
          //               successColor: true,
          //             );
          //           },
          //           textColor: Colors.white),
          //       Builder(builder: (context) {
          //         return customButton(
          //             context: context,
          //             title: "I decline",
          //             bgColor: Colors.grey.shade200,
          //             callback: () {
          //               GlobalVariables.customSnackbar(
          //                   context: context,
          //                   title: "please accept faq services");
          //             },
          //             textColor: Colors.black);
          //       }),
          //     ],
          //   ),
          // )
        ],
      )),
    ));
  }

  Widget customButton(
      {required String title,
      required Color bgColor,
      required BuildContext context,
      required VoidCallback callback,
      required Color textColor}) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(size.width * .7, size.height * .060),
          backgroundColor: bgColor,
          foregroundColor: textColor),
      child: Text(title),
    );
  }
}
