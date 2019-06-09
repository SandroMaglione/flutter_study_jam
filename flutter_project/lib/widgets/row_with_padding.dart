import 'package:flutter/material.dart';

class RowWithPadding extends StatelessWidget {
  final List<Widget> children;
  RowWithPadding({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: children,
          ),
        ),
      ],
    );
  }
}
