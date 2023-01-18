import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:youtube_widget/views/faq/faq_page.dart';
import 'package:youtube_widget/views/utils/global_variables.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
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
          //             GlobalVariables.navigateToPage(
          //                 context: context, page: const FaqPage());
          //           },
          //           textColor: Colors.white),
          //       customButton(
          //           context: context,
          //           title: "I decline",
          //           bgColor: Colors.grey.shade200,
          //           callback: () {
          //             GlobalVariables.customSnackbar(
          //                 context: context,
          //                 title: "please accept terms and services.");
          //           },
          //           textColor: Colors.black),
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
