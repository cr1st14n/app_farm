import 'package:app_farm/src/pages/index2_page.dart';
import 'package:app_farm/src/pages/index_page.dart';
import 'package:app_farm/src/pages/login_page.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    
  };
}
