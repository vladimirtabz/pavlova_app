import 'package:flutter_test/flutter_test.dart';

import 'package:pavlova_app/main.dart';

void main() {
  testWidgets('Pavlova screen shows recipe details', (WidgetTester tester) async {
    await tester.pumpWidget(const PavlovaApp());

    expect(find.text('Strawberry Pavlova'), findsOneWidget);
    expect(find.text('90 Reviews'), findsOneWidget);
    expect(find.text('PREP'), findsOneWidget);
    expect(find.text('COOK'), findsOneWidget);
    expect(find.text('FEEDS'), findsOneWidget);
    expect(find.text('25 min'), findsOneWidget);
  });
}