import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

    final bool _answer;
    AnswerButton(this._answer, this._onTap);
    final VoidCallback _onTap;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
              child: new Material(
                color: this._answer? Colors.greenAccent : Colors.redAccent,
                child: new InkWell(
                  onTap: this._onTap,
                  child: new Center(
                    child: new Container(
                        padding: new EdgeInsets.all(20.0),
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.white, width: 5.0)
                        ),
                        child: new Text(this._answer? "True" : "False",
                        style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                    )),
                  ),
                ),
              ),
            );
  }

}