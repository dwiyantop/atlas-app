import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

// Central Service Locator
// This is the container where all dependencies are stored.
// To retrieve a dependency, use:
// `serviceLocator<MyDependency>()` or `serviceLocator.get<MyDependency>()`

extension ServiceLocatorExt on GetIt {
  // Helper extension to retrieve dependencies using GetIt.
  // Usage: `serviceLocator.create<MyDependency>(context)`
  T create<T extends Object>(BuildContext context) => get<T>();
}

final GetIt serviceLocator = GetIt.instance;
