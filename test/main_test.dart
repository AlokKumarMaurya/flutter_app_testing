import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/news_change_notifier.dart';
import 'package:unit_testing/news_service.dart';
import 'package:mocktail/mocktail.dart';

class MockService extends Mock implements NewsService {}

void main() {
  late NewsChangeNotifier changeNotifier;
  late MockService mockService;
  setUp(() {
    mockService = MockService();
    changeNotifier = NewsChangeNotifier(mockService);
  });
  test("my first test to test the initial value in that controller", () {
    expect(changeNotifier.isLoading, true);
    expect(changeNotifier.article, []);
  });
}
