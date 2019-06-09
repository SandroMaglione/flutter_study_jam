import 'package:flutter/material.dart';
import 'package:flutter_project/screens/setuppage.dart';

import './detailspage.dart';
import '../widgets/row_with_padding.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("BIVI!"), leading: InkWellMenu()),
        body: BodyContent());
  }
}

class InkWellMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigateAndDisplaySelection(context);
      },
      child: Icon(Icons.arrow_back),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SetupPage()),
    );

    print("$result is the result");

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class BodyContent extends StatelessWidget {
  final String text;

  BodyContent({this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(60.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DetailsPage();
                }));
              },
              child: Hero(
                tag: 'hero',
                child: Card(
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: <Widget>[
                        RowWithPadding(children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(Icons.face),
                          ),
                          Text(
                            text == null ? "Default" : text,
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.orange,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'honey'
                            ),
                          ),
                        ]),
                        RowWithPadding(
                          children: [Text("Oleeee2")],
                        ),
                        RowWithPadding(
                          children: [Text("Oleeee2")],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
