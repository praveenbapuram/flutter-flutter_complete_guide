import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);

  String getResultPhrase(){
    if(totalScore >5){
      return 'You are awesome.\nyour score is '+totalScore.toString();
    }else if(totalScore >3){
      return 'You are Good.\n Your score is '+totalScore.toString();      
    }else{
      return 'You just passed the target.\nYour score is '+totalScore.toString();
    }

  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(getResultPhrase()),
    );
  }
}
