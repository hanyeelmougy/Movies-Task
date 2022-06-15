import 'package:shared_preferences/shared_preferences.dart';

class CasheHelper  {
 static late SharedPreferences  _prfs;

static Future<void> init() async {

  _prfs = await  SharedPreferences.getInstance();
}

static Future<void>saveMoves( int value)async{
await _prfs.setInt("key", value);
}

static int readMoves(){
 return _prfs.getInt("")??0;
}
}