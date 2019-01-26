import 'package:flutter/material.dart';
import 'package:quiz_app/pages/landing_page.dart';

class ScorePage extends StatelessWidget {

    final int score;
    final int totalQuestions;

    ScorePage(this.score, this.totalQuestions);
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              new Text("Your Score:" , style: new TextStyle(fontSize: 70.0, color: Colors.white)),
              new Text("${this.score}/${this.totalQuestions}", style: new TextStyle(fontSize: 50.0, color: Colors.white)),
              new IconButton(
                  icon: new Icon(Icons.arrow_right),
                  color: Colors.white,
                  iconSize: 50.0,
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()), (Route route) => route == null),
              )
          ],
      ),
    );
  }
}