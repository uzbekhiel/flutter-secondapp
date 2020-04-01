import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var text = "";
  var invertColors = false;
  Function func;
  var busy = false;

  LoadingButton({
    @required this.text,
    @required this.invertColors,
    @required this.func,
    @required this.busy,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invertColors
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: func,
              child: Text(
                text,
                style: TextStyle(
                  color: invertColors
                      ? Colors.white.withOpacity(0.8)
                      : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
            ),
          );
  }
}
