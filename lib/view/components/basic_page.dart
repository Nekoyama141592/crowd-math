import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({super.key, this.appBar, required this.child});
  final PreferredSizeWidget? appBar;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: appBar,
        body: child,
      ),
    ));
  }
}
