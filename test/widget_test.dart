import 'package:agrisphere/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home screen shows the AgriSphere starter dashboard', (
    tester,
  ) async {
    await tester.pumpWidget(const AgriSphereApp());

    expect(find.text('AgriSphere'), findsOneWidget);
    expect(find.text('Your farm, at a glance'), findsOneWidget);
    expect(find.text('Fields'), findsOneWidget);
    expect(find.text('Crops'), findsOneWidget);
    expect(find.text('Set up your farm'), findsOneWidget);
  });
}
