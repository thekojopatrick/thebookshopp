import 'package:flutter/widgets.dart';
import 'package:the_bookshop_app/ui/Getting-started/intro_screen.dart';
import 'package:the_bookshop_app/ui/Home-Screens/account_screen.dart';
import 'package:the_bookshop_app/ui/Home-Screens/app_screen.dart';
import 'package:the_bookshop_app/ui/Home-Screens/books_screen.dart';
import 'package:the_bookshop_app/ui/Home-Screens/home_screen.dart';
import 'package:the_bookshop_app/ui/Home-Screens/library_screen.dart';
import 'package:the_bookshop_app/ui/Home-Screens/stationary_screen.dart';
import 'package:the_bookshop_app/ui/Login/forgotten_password.dart';
import 'package:the_bookshop_app/ui/Login/login_screen.dart';
import 'package:the_bookshop_app/ui/Onboarding/onboarding_screen.dart';
import 'package:the_bookshop_app/ui/Signup/signup_screen.dart';
import 'package:the_bookshop_app/ui/splash_screen.dart';
import 'ui/Signup/enter_number_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/homepage': (BuildContext context) => SplashScreen(),
  '/second': (BuildContext context) => OnboardingScreen(),
  '/intro': (BuildContext context) => GettingStarted(),
  '/signup': (BuildContext context) => Signup(),
  '/login': (BuildContext context) => Login(),
  '/forgotten_password': (BuildContext context) => ForgottenPassword(),
  '/enter_number': (BuildContext context) => EnterNumber(),
  '/': (BuildContext context) => AppScreen(),
   '/home': (BuildContext context) => HomeScreen(),
  '/book': (BuildContext context) => BookScreen(),
  '/shop': (BuildContext context) => StationaryScreen(),
  '/library': (BuildContext context) => LibraryScreen(),
  '/account': (BuildContext context) => AccountScreen(),
};
