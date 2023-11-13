import 'dart:async';
import 'dart:io' show Directory;

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'addon_reminder_data_model.dart';
import 'objectbox.g.dart';

class AddonsObjectBoxStorageProvider implements Disposable {
  AddonsObjectBoxStorageProvider._create(this.store) {
    addonReminderDataModelBox = store.box<AddonReminderDataModel>();
  }

  late final Store store;
  late final Box<AddonReminderDataModel> addonReminderDataModelBox;

  static Future<AddonsObjectBoxStorageProvider> create() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String appPath = directory.path;
    String directoryPath = '$appPath/addons';
    Store store;
    if (Store.isOpen(directoryPath)) {
      store = Store.attach(getObjectBoxModel(), directoryPath);
    } else {
      store = await openStore(directory: directoryPath);
    }
    return AddonsObjectBoxStorageProvider._create(store);
  }

  @override
  FutureOr onDispose() {
    _closeStore();
  }

  void _closeStore() {
    if (!store.isClosed()) {
      store.close();
    }
  }

  int createOrUpdateReminder(AddonReminderDataModel reminderDataModel) {
    debugPrint("createOrUpdateReminder");
    return 1;
  }
}
