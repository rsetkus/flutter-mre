import 'package:injectable/injectable.dart';

import 'addon_reminder_domain_model.dart';
import 'addon_reminder_repository.dart';

@injectable
class GetActiveAddonRemindersUseCase {
  const GetActiveAddonRemindersUseCase({
    required AddonReminderRepository addonReminderRepository,
  }) : _addonReminderRepository = addonReminderRepository;

  final AddonReminderRepository _addonReminderRepository;

  Future<List<AddonReminderDomainModel>> call() async {
    return _addonReminderRepository.getActiveReminders();
  }
}
