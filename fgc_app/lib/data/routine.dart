class Routine{
  String creator;
  String name;
  String description;
  double progress;
  double objective;
  String yourInput = '';
  String enemyInput = '';
  String charPick ='';
  String enemPick = '';

  Routine(this.creator, this.name, this.description, this.progress, this.objective,);

  String getCreator(){return creator;}
  void setCreator(String value){creator=value;}

  String getName(){return name;}
  void setName(String value){name=value;}

  String getDescription(){return description;}
  void setDescription(String value){description=value;}

  double getProgress(){return progress;}
  void setProgress(double value){progress=value;}

  double getObjective(){return objective;}
  void setObjective(double value){objective=value;}

  String getYourInput(){return yourInput;}
  void setYourInput(String value){yourInput=value;}

  String getEnemyInput(){return enemyInput;}
  void setEnemyInput(String value){enemyInput=value;}

  String getCharPick(){return charPick;}
  void setCharPick(String value){charPick=value;}

  String getEnemPick(){return enemPick;}
  void setEnemPick(String value){enemPick=value;}
}