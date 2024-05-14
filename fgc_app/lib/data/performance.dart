import 'dart:ffi';

class Performance{
  Float winRate;
  Float loseRate;
  Float executionRate;
  Float reactionRate;
  Float counterRate;

  Performance(this.winRate, this.loseRate, this.executionRate, this.reactionRate, this.counterRate);

  Float getWinRate(){return winRate;}
  void setWinRate(Float value){winRate=value;}

  Float getLoseRate(){return loseRate;}
  void setLoseRate(Float value){loseRate=value;}

  Float getExecutionRate(){return executionRate;}
  void setExecutionRate(Float value){executionRate=value;}

  Float getReactionRate(){return executionRate;}
  void setReactionRate(Float value){executionRate=value;}

  Float getCounterRate(){return counterRate;}
  void setCounterRate(Float value){counterRate=value;}
}