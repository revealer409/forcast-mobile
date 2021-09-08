import 'package:flutter/material.dart';
import 'package:forcast/presentation/auth/sign_in_page.dart';
import 'package:forcast/presentation/auth/sign_up_page.dart';
import 'package:forcast/presentation/home/home_page.dart';
import 'package:forcast/presentation/not_found/not_found_page.dart';
import 'package:forcast/routes/route_constants.dart';
import 'package:forcast/presentation/opportunities/opportunities_page.dart';

class CstmRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case opportunitiesRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());
      case opportunityDetailRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());

      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
