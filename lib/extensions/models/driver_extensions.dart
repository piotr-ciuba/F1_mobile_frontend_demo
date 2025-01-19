import 'package:f1_mobile_frontend_demo/models/driver/driver.dart';

extension DriverExtensions on Driver {
  bool get idDriverYoung {
    if (dateOfBirth == null) {
      return false;
    } else {
      final dateOfBirth = DateTime.parse(this.dateOfBirth!);
      final now = DateTime.now();
      final age = now.year - dateOfBirth.year;
      return age < 25;
    }
  }
}
