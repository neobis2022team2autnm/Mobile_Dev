import 'dart:io';

import 'package:silkroad_trip/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.logo).existsSync(), true);
    expect(File(Images.logoX3).existsSync(), true);
    expect(File(Images.logoX4).existsSync(), true);
  });
}
