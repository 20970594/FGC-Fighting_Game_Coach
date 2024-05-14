import 'package:fgc_app/data/user.dart';

int gameSelected = 1;
int menuSelected = 1;

const String tabIcon_01 = 'assets/images/controller_icon.png';
const String tabIcon_02 = 'assets/images/lupe_icon.png';
const String tabIcon_03 = 'assets/images/notes_icon.png';
const String tabIcon_04 = 'assets/images/guide_icon.png';

const String charIcon_01 = 'assets/images/GGST_Sol_Badguy_Icon.png';
const String charIcon_02 = 'assets/images/GGST_Ky_Kiske_Icon.png';

const String GameIcon_01 = 'assets/images/GGST_logo.png';
const String GameIcon_02 = 'assets/images/BlazBlue_logo.png';
const String GameIcon_03 = 'assets/images/SF6_logo.png';


void setGame(int something){
  gameSelected = something;
}

void setMenu(int something){
  menuSelected = something;
}
