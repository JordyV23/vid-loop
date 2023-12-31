import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vidloop/presentation/providers/discover_provider.dart';
import 'package:vidloop/presentation/screens/discover/discover_screen.dart';
import 'package:vidloop/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
