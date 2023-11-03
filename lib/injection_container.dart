import 'dart:async';

import 'package:get_it/get_it.dart';

import 'addons_benefits_injection_module.dart';

final injector = GetIt.instance;

FutureOr<void> init() async {
  await _initCoreModules();
}

FutureOr<void> _initCoreModules() async {
  final addonsBenefitsInjectorModule = AddonsBenefitsInjectionModule(injector);
  await addonsBenefitsInjectorModule.registerDependencies();
}