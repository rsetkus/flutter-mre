import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'addon_reminder_data_model.dart';
import 'addon_reminder_domain_model.dart';
import 'addon_reminder_repository.dart';
import 'addons_object_box_storage_provider.dart';

@Injectable(as: AddonReminderRepository)
class AddonReminderDataRepository implements AddonReminderRepository {
  AddonReminderDataRepository({
    required AddonsObjectBoxStorageProvider addonsObjectBoxStorageProvider
  })  : _addonsObjectBoxStorageProvider = addonsObjectBoxStorageProvider;

  final AddonsObjectBoxStorageProvider _addonsObjectBoxStorageProvider;

  @override
  int createOrUpdateReminder(AddonReminderPostDomainModel domainModel) {
    return _addonsObjectBoxStorageProvider.createOrUpdateReminder(AddonReminderDataModel(id: 1, addonId: "1"));
  }

  @override
  AddonReminderDomainModel getAddonReminder(String addonId, String msisdn) {
    throw UnsupportedError("getAddonReminder");
  }

  @override
  List<AddonReminderDomainModel> getNotShownAddonReminders() {
    throw UnsupportedError("getNotShownAddonReminders");
  }

  @override
  List<AddonReminderDomainModel> getActiveReminders() {
    throw UnsupportedError("getActiveReminders");
  }

  @override
  List<int> updateAddonReminders(List<AddonReminderPostDomainModel> reminders) {
    throw UnsupportedError("updateAddonReminders");
  }

  @override
  int removeAllAddonReminders() {
    throw UnsupportedError("removeAllAddonReminders");
  }

  @override
  bool removeAddonReminder(String addonId, String msisdn) {
    throw UnsupportedError("removeAddonReminder");
  }

  @override
  List<AddonReminderDomainModel> getAllReminders() {
    throw UnsupportedError("getAllReminders");
  }
}
