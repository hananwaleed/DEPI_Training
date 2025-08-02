import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastNoContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast without Context")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Hello from Toast without Context",
              gravity: ToastGravity.BOTTOM,
            );
          },
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}
