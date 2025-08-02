import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast with Context")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Hello from Toast with Context",
              gravity: ToastGravity.BOTTOM,
            );
          },
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}
