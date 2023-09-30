import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'example_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  debugPrint(dotenv.env['AUTH0_DOMAIN'].toString());
  runApp(const ExampleApp());
}
