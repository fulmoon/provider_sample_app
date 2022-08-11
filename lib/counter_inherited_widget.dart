import 'package:counter_provider_sample_app/counter.dart';
import 'package:counter_provider_sample_app/next_screen.dart';
import 'package:flutter/material.dart';

class CounterInheritedWidget extends StatelessWidget {
  const CounterInheritedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = Counter.of(context).count;

    return Scaffold(
      appBar: AppBar(
        title: const Text('카운터'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
