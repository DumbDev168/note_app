import 'package:flutter/material.dart';

void showMessageSnackbar(
  BuildContext context,
  String message, {
  Color? color,
}) {
  final snackbar = SnackBar(
    backgroundColor: color,
    content: Text(message),
    behavior: SnackBarBehavior.floating,
  );
  final scaffoldMsg = ScaffoldMessenger.of(context);
  scaffoldMsg
    ..hideCurrentSnackBar()
    ..showSnackBar(snackbar);
}

Future<bool> showConfirmation(
  BuildContext context, {
  required String title,
  required String content,
}) async {
  bool shouldDismiss = false;
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Cancel');
                shouldDismiss = false;
              },
              child: const Text("CANCEL"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Delete');
                shouldDismiss = true;
              },
              child: const Text("DELETE"),
            ),
          ],
        )
      ],
    ),
  );
  return shouldDismiss;
}
