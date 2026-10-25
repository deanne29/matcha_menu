
import 'package:flutter_test/flutter_test.dart';
import 'package:matcha_menu/main.dart';

void main() {
  testWidgets('Matcha & Co. menu opens', (WidgetTester tester) async {
    await tester.pumpWidget(const MatchaApp());

    expect(find.text('Matcha & Co.'), findsOneWidget);
    expect(find.text('Our Menu'), findsOneWidget);
    expect(find.text('Iced Matcha Latte'), findsOneWidget);
  });
}
