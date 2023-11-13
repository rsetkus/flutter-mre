import 'dart:async';

import 'package:addon_benefits/core/addons_benefits_injection_module.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

FutureOr<void> init() async {
  await _initCoreModules();
}

FutureOr<void> _initCoreModules() async {
  final addonsBenefitsInjectorModule = AddonsBenefitsInjectionModule(injector);
  await addonsBenefitsInjectorModule.registerDependencies();
}