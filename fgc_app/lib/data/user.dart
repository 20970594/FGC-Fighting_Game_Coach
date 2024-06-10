import 'package:fgc_app/data/game_profile.dart';

class User{
  late String name;
  late String password;
  late String email;
  late GameProfile gameProfile = GameProfile(name, true, 150, 'Floor 7');

  User(this.name, this.password, this.email);
  
  String getName(){return name;}
  void setName(String value){name=value;}

  String? getPassword(){return password;}
  void setPassword(String value){password=value;}

  String? getEmail(){return email;}
  void setEmail(String value){email=value;}

  GameProfile getGameProfile(){return gameProfile;}
  void setGameProfile(GameProfile value){gameProfile=value;}
}