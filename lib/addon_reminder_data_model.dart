import 'package:objectbox/objectbox.dart';

@Entity()
class AddonReminderDataModel {
  AddonReminderDataModel({
    required this.id,
    required this.addonId
  });
  int id;
  @Index()
  String addonId;
}