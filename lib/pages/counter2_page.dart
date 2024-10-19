import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/counter_provider.dart';

class Counter2Page extends ConsumerWidget {
  const Counter2Page({super.key});

  @override
  Widget build(context, ref) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Calls the increment method on the CounterModel instance
              // provided by the riverPodCounterProviderHome2.
              // This increases the counter by one and notifies listeners.
              ref.read(riverPodCounterProviderHome2).increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // read the state of the provider and call the decrement method
              // this will cause the value of the counter to decrease by one
              // and notify all the listeners (i.e. the Text widget in the body)
              // that the value has changed, so they will rebuild with the new value.
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
      appBar: AppBar(
        title: const Text('Counter Page 2'),
      ),
      body: Center(
        child: Text(
          // Read the value of the counter from the provider
          // this will cause the provider to notify this widget
          // when the value changes, and this widget will rebuild with the new value.
          ref.watch(riverPodCounterProviderHome2).counter.toString(),
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
