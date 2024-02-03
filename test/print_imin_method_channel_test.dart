import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:print_imin/print_imin_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelPrintImin platform = MethodChannelPrintImin();
  const MethodChannel channel = MethodChannel('print_imin');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.initPrinter(), '42');
  });
}
