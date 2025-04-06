import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/app.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const ProviderScope(child: TestApp()),);
}