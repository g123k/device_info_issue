// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Device info issue', (WidgetTester tester) async {
    final effectiveDeviceInfo = DeviceInfoPlugin();

    if (Platform.isMacOS) {
      final macInfo = await effectiveDeviceInfo.macOsInfo;
      final model = macInfo.model;
    }
  });
}
