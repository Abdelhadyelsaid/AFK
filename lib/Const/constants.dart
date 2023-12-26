import 'package:afk_task/helper/cache_helper.dart';
import 'package:flutter/material.dart';

String? token = CacheHelper.getData(key: "token");
bool? firstTime = CacheHelper.getData(key: "firstTime");

void onSuccess({
  required BuildContext context,
  required String text,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    backgroundColor: Colors.green,
  ));
}

void onError({
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("لقد حدث خطأ"),
    backgroundColor: Colors.red,
  ));
}

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void replaceTo(context, widget) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
