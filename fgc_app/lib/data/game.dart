class Game{
  String name;
  String urlLogo;
  String urlAccess;
  String description;
  String genre;

  Game(this.name, this.urlLogo, this.urlAccess, this.description, this.genre);

  String getName(){return name;}
  void setName(String value){name=value;}

  String getUrlLogo(){return urlLogo;}
  void setUrlLogo(String value){urlLogo=value;}

  String getUrlAccess(){return urlAccess;}
  void setUrlAccess(String value){urlAccess=value;}

  String getDescription(){return description;}
  void setDescription(String value){description=value;}

  String getGenre(){return genre;}
  void setGenre(String value){genre=value;}
}