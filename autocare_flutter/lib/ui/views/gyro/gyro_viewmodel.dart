import 'package:autocare_flutter/models/reading.dart';
import 'package:autocare_flutter/services/database_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class GyroViewModel extends ReactiveViewModel {
  final _databaseService = locator<DatabaseService>();
  DeviceReading? get node => _databaseService.node;
}
