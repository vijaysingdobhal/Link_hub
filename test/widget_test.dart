import 'package:flutter_test/flutter_test.dart';
import 'package:linkhub/main.dart';

void main() {
  testWidgets('LinkHub app launches and displays HomeScreen', (WidgetTester tester) async {
    // Build the LinkHubApp and trigger a frame.
    await tester.pumpWidget(const LinkHubApp());

    // Verify that the HomeScreen is displayed.
    expect(find.text('Link-hub'), findsOneWidget); // Change according to your app's title
  });
}
