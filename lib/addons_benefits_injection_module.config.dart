// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fluttermre/addon_reminder_data_repository.dart' as _i4;
import 'package:fluttermre/addon_reminder_repository.dart' as _i3;
import 'package:fluttermre/addons_object_box_storage_provider.dart' as _i5;
import 'package:fluttermre/get_active_addon_reminders_use_case.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AddonReminderRepository>(() => _i4.AddonReminderDataRepository(
      addonsObjectBoxStorageProvider:
          gh<_i5.AddonsObjectBoxStorageProvider>()));
  gh.factory<_i6.GetActiveAddonRemindersUseCase>(() =>
      _i6.GetActiveAddonRemindersUseCase(
          addonReminderRepository: gh<_i3.AddonReminderRepository>()));
  return getIt;
}
