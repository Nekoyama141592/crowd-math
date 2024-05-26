import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage(
      {super.key, this.appBar, this.floatingActionButton, required this.child});
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        body: child,
      ),
    ));
  }
}
