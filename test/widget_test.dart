import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vitae/main.dart';

void main() {
  testWidgets('MyApp test', (WidgetTester tester) async {
    // Build MyApp and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app has a title of 'Vitae'.
    expect(find.text('Vitae'), findsOneWidget);

    // Verify that the app has a MyHomePage widget.
    expect(find.byType(MyHomePage), findsOneWidget);
  });

  testWidgets('MyHomePage test', (WidgetTester tester) async {
    // Build MyHomePage and trigger a frame.
    await tester
        .pumpWidget(const MaterialApp(home: MyHomePage(title: 'Test Title')));

    // Verify that the app has a title of 'Test Title'.
    expect(find.text('Test Title'), findsOneWidget);

    // Verify that the app has three Text widgets with the specified styles.
    expect(find.text('Location'), findsOneWidget);
    expect(find.text('Battery'), findsOneWidget);
    expect(find.text('Status'), findsOneWidget);
  });
}
