import 'package:flutter/material.dart';
import 'package:forcast/routes/route_constants.dart';
import 'package:forcast/routes/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forcast',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: OpportunitiesPage());
      onGenerateRoute: CstmRouter.onGenerateRoute,
      initialRoute: homeRoute,
    );
  }
}
