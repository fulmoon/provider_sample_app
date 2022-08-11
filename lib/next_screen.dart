import 'package:flutter/material.dart';
import 'package:counter_provider_sample_app/counter.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Counter.of(context).count}'),
      ),
      body: Container(),
    );
  }
}
