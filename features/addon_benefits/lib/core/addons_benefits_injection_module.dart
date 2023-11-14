import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../addons_object_box_storage_provider.dart';
import '../injection_module.dart';
import 'addons_benefits_injection_module.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  asExtension: false,
)
void _configureDependencies(GetIt injector) => $initGetIt(injector);

class AddonsBenefitsInjectionModule implements InjectionModule {

  AddonsBenefitsInjectionModule(this.injector);

  final GetIt injector;

  @override
  FutureOr<void> registerDependencies() async {
    _configureDependencies(injector);
    await _registerProviders();
  }

  Future<void> _registerProviders() async {
    final addonsObjectBoxStorageProvider = await AddonsObjectBoxStorageProvider.create();

    injector.registerLazySingleton<AddonsObjectBoxStorageProvider>(
            () => addonsObjectBoxStorageProvider);
  }
}