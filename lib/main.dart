import 'package:flutter/material.dart';
import 'package:live_assesment/core/helpers/utils.dart';
import 'package:live_assesment/live_app.dart';

void main() async {
  await registerService();
  runApp(LiveApp());
}
