import 'package:courier_delivery_service_app/screens/splash/home/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:courier_delivery_service_app/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
