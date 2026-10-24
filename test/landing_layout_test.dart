import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lystingdomainpage/main.dart';

void main() {
  test('day and night follow the visitor local clock boundaries', () {
    expect(isLocalDaytime(DateTime(2026, 10, 23, 5, 59)), isFalse);
    expect(isLocalDaytime(DateTime(2026, 10, 23, 6)), isTrue);
    expect(isLocalDaytime(DateTime(2026, 10, 23, 17, 59)), isTrue);
    expect(isLocalDaytime(DateTime(2026, 10, 23, 18)), isFalse);
    expect(isLocalDaytime(DateTime(2026, 10, 23, 23)), isFalse);
  });
  testWidgets('landing fits phone, landscape, tablet and desktop viewports',
      (tester) async {
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    for (final size in [
      const Size(320, 480),
      const Size(390, 844),
      const Size(430, 932),
      const Size(844, 390),
      const Size(768, 1024),
      const Size(881, 954),
      const Size(1366, 768)
    ]) {
      tester.view.physicalSize = size;
      await tester.pumpWidget(LysTingApp(key: UniqueKey()));
      await tester.pump(const Duration(milliseconds: 100));
      expect(tester.takeException(), isNull, reason: '$size must not overflow');
      expect(find.byType(SingleChildScrollView), findsNothing);
      final download = tester.getRect(find.text('LysTing mobile'));
      final stats = tester.getRect(find.text('Happy Clients'));
      expect(download.bottom, lessThanOrEqualTo(size.height));
      expect(stats.bottom, lessThanOrEqualTo(size.height));
      if (size.width == 881) {
        final bullet = tester.widget<Text>(find.text('Smart Home Automation'));
        expect(bullet.style!.fontSize, greaterThanOrEqualTo(9),
            reason:
                'Card text must grow beyond the previous small sizing, even with the wide test font');
      }
      final iot = tester.getRect(find.text('LysTing Smart IoT'));
      final app = tester.getRect(find.text('LysTing App'));
      final mart = tester.getRect(find.text('LysMart'));
      expect(iot.left, lessThan(app.left));
      if (size.width >= 1000 || size.width > size.height * 2) {
        expect(iot.top, closeTo(mart.top, 2));
      } else {
        expect(iot.top, lessThan(mart.top));
      }
      final firstFrame = tester.getRect(find
          .ancestor(
              of: find.text('LysTing Smart IoT'),
              matching: find.byType(InkWell))
          .first);
      final rightFrame = tester.getRect(find
          .ancestor(
              of: find.text(size.width >= 1000 || size.width > size.height * 2
                  ? 'LysBook'
                  : 'LysTing App'),
              matching: find.byType(InkWell))
          .first);
      expect(firstFrame.left, lessThan(size.width * .1),
          reason: '$size cards fill available width');
      expect(rightFrame.right, greaterThan(size.width * .9),
          reason: '$size cards fill available width');
      expect(firstFrame.width, closeTo(rightFrame.width, .01));
      expect(find.byType(PageView), findsNothing);
      await tester.tap(find.text('Mobile view'));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull, reason: '$size mobile view fits');
      expect(tester.getRect(find.text('LysTing Smart IoT')).top,
          closeTo(tester.getRect(find.text('LysMart')).top, 2));
      await tester.tap(find.text('Cards view'));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull, reason: '$size cards view fits');
      await tester.tap(find.text('LysMart').first);
      final navigator = Navigator.of(tester.element(find.byType(LandingPage)));
      expect(navigator.canPop(), isTrue, reason: '$size card tap navigates');
      navigator.pop();
      await tester.pumpAndSettle();
    }
  });

  testWidgets('contact and category menu respond to touch', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const LysTingApp());
    await tester.tap(find.text('Contact Us'));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsOneWidget);
    Navigator.of(tester.element(find.byType(Dialog))).pop();
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Explore LysTing'));
    await tester.pumpAndSettle();
    expect(find.byType(PopupMenuItem<FeatureCategory>), findsNWidgets(4));
    await tester.tap(find.descendant(
        of: find.byType(PopupMenuItem<FeatureCategory>),
        matching: find.text('LysBook')));
    await tester.pumpAndSettle();
    expect(find.byType(FeatureDetailScreen), findsOneWidget);
  });
}
