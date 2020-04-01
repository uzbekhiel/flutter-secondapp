import 'package:flutter/material.dart';
import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  var buttonText = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
    @required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: "Big Shoulders Display",
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            text: buttonText,
            invertColors: true,
            func: reset,
            busy: false,
          )
        ],
      ),
    );
  }
}
