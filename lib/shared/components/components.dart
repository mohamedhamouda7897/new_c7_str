import 'package:flutter/material.dart';

void showLoading(BuildContext context, String message) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Row(children: [CircularProgressIndicator(), Text(message)]),
          ),
        );
      });
}

void hideLoading(BuildContext context) {
  Navigator.pop(context);
}

void showMessage(BuildContext context, String title, String posBtn,
    VoidCallback posAction, String content, bool isCancel,
    {String? negBtn, VoidCallback? negAction}) {
  List<Widget> actions = [
    TextButton(onPressed: posAction, child: Text(posBtn)),
  ];
  if (negBtn != null) {
    actions.add(TextButton(onPressed: negAction, child: Text(negBtn)));
  }
  showDialog(
      context: context,
      barrierDismissible: isCancel,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: actions,
        );
      });
}
