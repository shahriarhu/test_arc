import 'package:flutter/material.dart';
import 'package:test_arc/ui/views/profile_details_view.dart';
import 'package:test_arc/ui/views/profiles_view.dart';

class RouteNavigation {
  static const String signIn = 'signIn';
  static const String profiles = 'profiles';
  static const String profileDetails = 'profileDetails';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case signIn:
      //   return MaterialPageRoute(builder: (context) => SignInView());
      case profiles:
        return MaterialPageRoute(builder: (context) => const ProfileView());
      case profileDetails:
        return MaterialPageRoute(builder: (context) => const ProfileDetailsView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
