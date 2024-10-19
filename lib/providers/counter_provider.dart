import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/models/counter_model.dart';

/// riverpodCounterProviderHome is a StateProvider that stores an int value.
///
/// By default, the value is initialized to 0. This provider can be used
/// by widgets to display the current value of the counter and to update
/// the value of the counter when the user taps on the increment or
/// decrement buttons.
///
/// The value of this provider is not persisted between app restarts.
final riverpodCounterProviderHome = StateProvider<int>((ref) {
  return 0;
});

/// riverPodCounterProviderHome2 is a ChangeNotifierProvider that stores
/// an instance of CounterModel.
///
/// By default, the value of the counter is initialized to 0. This provider
/// can be used by widgets to display the current value of the counter and
/// to update the value of the counter when the user taps on the increment
/// or decrement buttons.
///
/// The value of this provider is not persisted between app restarts.
///
/// Using a ChangeNotifierProvider instead of a StateProvider allows for
/// more complex business logic to be implemented in the model, such as
/// loading the value from a database or performing calculations on the
/// value.
///
/// Note that this provider is not typically used in the same way as
/// a StateProvider, because the value of the counter is not directly
/// accessed or modified. Instead, the model is used to update the value
/// of the counter and to notify the widgets of the change.
final riverPodCounterProviderHome2 =
    ChangeNotifierProvider<CounterModel>((ref) {
  return CounterModel(counter: 0);
});
