import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)
          ),
          title: Text("Oleeeeeeea"),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'hero',
                child: Image.asset("assets/images/screen.jpg")
              ),
              Expanded(
                child: ListView(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(27.0),
                    child: Text(
                      "Lists are Iterable. Iteration occurs over values in index order. Changing the values does not affect iteration, but changing the valid indices—that is, changing the list's length—between iteration steps causes a ConcurrentModificationError. This means that only growable lists can throw ConcurrentModificationError. If the length changes temporarily and is restored before continuing the iteration, the iterator does not detect it. It is generally not allowed to modify the list's length adding or removing elements while an operation on the list is being performed, for example during a call to forEach or sort. Changing the list's length while it is being iterated, either by iterating it directly or through iterating an Iterable that is backed by the list, will break the iteration.",
                      style: TextStyle(fontSize: 18.0, height: 1.2),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
