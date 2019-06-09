import 'package:flutter/material.dart';

class SetupPage extends StatefulWidget {
  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  String fieldText;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime),
      home: Scaffold(
        appBar: AppBar(),
        body: Hero(
          tag: 'hero',
          child: Padding(
            padding: const EdgeInsets.all(42.0),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (text) {
                    fieldText = text;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'My name',
                  ),
                ),
                RaisedButton(
                  color: Colors.lime,
                  onPressed: () {
                    Navigator.pop(context, fieldText == null ? 'Not default' : fieldText);
                  },
                  child: Text("Let's go"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
