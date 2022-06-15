








  import 'package:flutter/material.dart';
import 'package:movies/main_movies/view.dart';

import 'helper/cashe_helper.dart';
import 'main_movies/view.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await CasheHelper.init();
       runApp(MyApp());
  }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: MoviesScreen());
  }

}