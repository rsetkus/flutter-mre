import 'addon_reminder_domain_model.dart';

abstract class AddonReminderRepository {
  int createOrUpdateReminder(AddonReminderPostDomainModel domainModel);

  AddonReminderDomainModel getAddonReminder(String addonId, String msisdn);

  List<AddonReminderDomainModel> getNotShownAddonReminders();

  List<AddonReminderDomainModel> getAllReminders();

  List<AddonReminderDomainModel> getActiveReminders();

  List<int> updateAddonReminders(List<AddonReminderPostDomainModel> reminders);

  bool removeAddonReminder(String addonId, String msisdn);

  int removeAllAddonReminders();
}
