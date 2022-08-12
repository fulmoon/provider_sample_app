import 'package:counter_provider_sample_app/counter_provider.dart';
import 'package:counter_provider_sample_app/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter InheritedWidget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => CounterViewModel(),
        child: CounterProvider(),
      ),
    );
  }
}
