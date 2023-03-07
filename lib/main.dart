import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:to_do_app/App.dart';
import 'firebase_options.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppScreen());
}

