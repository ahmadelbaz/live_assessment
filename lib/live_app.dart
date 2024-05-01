import 'package:flutter/material.dart';
import 'package:live_assesment/core/routing/routes.dart';

class LiveApp extends StatelessWidget {
  const LiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      // onGenerateRoute: ,
    );
  }
}
