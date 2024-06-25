import 'package:flutter/material.dart';
import 'package:task_management_app/screens/login_screen.dart';
import 'package:task_management_app/screens/task_list_screen.dart';

class RouterPage {
  static _getRoute(String route, [dynamic data]) {
    switch (route) {
      case '/':
        return const LoginScreen();
      case '/task-list-screen':
        return const TaskListScreen();
      default:
        return Container();
    }
  }

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic>? onGenerateRoute(RouteSettings? settings) {
    final route = settings!.name;
    final data = settings.arguments;
    return MaterialPageRoute(builder: (_) => _getRoute(route.toString(), data));
  }

  static void navigateTo(BuildContext context, String route,
      [replace = false]) {
    if (replace) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => _getRoute(route),
        ),
      );
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _getRoute(route),
      ),
    );
  }

  static void navigateToWithData(
      BuildContext context, String route, dynamic data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _getRoute(route, data),
      ),
    );
  }

  static void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
