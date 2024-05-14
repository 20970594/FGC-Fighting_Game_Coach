class GameProfile{
  String name;
  int level;
  String rank;
  bool connectionState;

  GameProfile(this.name, this.connectionState, this.level, this.rank);

  String getName(){return name;}
  void setName(String value){name=value;}

  int getLevel(){return level;}
  void setLevel(int value){level=value;}

  String getRank(){return rank;}
  void setRank(String value){rank=value;}

  bool getConnectionState(){return connectionState;}
  void setConectionState(bool value){connectionState=value;}
}