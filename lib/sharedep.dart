import 'package:shared_preferences/shared_preferences.dart';

void  savevingData( token) async{
  SharedPreferences share= await SharedPreferences.getInstance();
  share.setString("Token", token);
}
 Future<void> savenameData(firstname) async{
  SharedPreferences share1=await SharedPreferences.getInstance();
  share1.setString("ftname", firstname);
 }
 Future<void> savepicData( var picurl) async{
  SharedPreferences share2=await SharedPreferences.getInstance();
  share2.setString("pic", picurl);
 }
 Future<void> saveparentpic(var parenturl) async{
  SharedPreferences share3=await SharedPreferences.getInstance();
  share3.setString("pntpic", parenturl);
 }
  Future<void>saveparentimgData(parentimgg)async{
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString("image1", parentimgg);
   var ParentProfileImg =sharedPreferences.getString("image1")??""; 
  
 }