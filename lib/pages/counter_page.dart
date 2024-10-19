import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(context, ref) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              // increment the counter by one
              // by calling the state setter of the Provider
              // this will cause the Provider to notify all the listeners
              // that the value has changed, and they will rebuild with the new value.
              ref.read(riverpodCounterProviderHome.notifier).state++;
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // decrement the counter by one
              // by calling the state setter of the Provider
              // this will cause the Provider to notify all the listeners
              // that the value has changed, and they will rebuild with the new value.
              ref.read(riverpodCounterProviderHome.notifier).state--;
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Text(
          // Read the value of the counter from the Provider
          // this will cause the Provider to notify this widget
          // when the value changes, and this widget will rebuild with the new value.
          ref.watch(riverpodCounterProviderHome).toString(),
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
