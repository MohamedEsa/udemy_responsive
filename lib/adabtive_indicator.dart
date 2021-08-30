import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdabtiveIndicator extends StatelessWidget {
  String os;
  AdabtiveIndicator({required this.os});
  @override
  Widget build(BuildContext context) {
    if (os == 'android') return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
