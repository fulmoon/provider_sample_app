import 'package:counter_provider_sample_app/counter.dart';
import 'package:counter_provider_sample_app/counter_inherited_widget.dart';
import 'package:flutter/material.dart';

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
      home: const Counter(
        count: 100,
        child: CounterInheritedWidget(),
      ),
    );
  }
}
