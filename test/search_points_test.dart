import 'package:search_points/search_points.dart';
import 'package:test/test.dart';

void main() {
  group('SearchPoints Tests', () {
    late SearchPoints searchPoints;

    setUp(() {
      // Initialize the SearchPoints instance before each test
      searchPoints = SearchPoints();
    });

    test('Linear Search Test - Found', () {
      final list = ['1', '36', '75', '35', '643', '5'];
      final target = '35';
      final result = searchPoints.linearSearch(list, target);
      expect(result, equals([3])); // Expecting index 3 for the target '35'
    });

    test('Linear Search Test - Not Found', () {
      final list = ['1', '36', '75', '35', '643', '5'];
      final target = '100';
      final result = searchPoints.linearSearch(list, target);
      expect(result, equals([])); // Target '100' should not be found
    });

    test('Binary Search Test - Found', () {
      final list = ['1', '5', '35', '36', '75', '643'];
      final target = '35';
      final result = searchPoints.binarySearch(list, target);
      expect(result, equals([2])); // Expecting index 2 for the target '35'
    });

    test('Binary Search Test - Not Found', () {
      final list = ['1', '5', '35', '36', '75', '643'];
      final target = '100';
      final result = searchPoints.binarySearch(list, target);
      expect(result, equals([])); // Target '100' should not be found
    });

    test('Jump Search Test - Found', () {
      final list = ['1', '5', '35', '36', '75', '643'];
      final target = '36';
      final result = searchPoints.jumpSearch(list, target);
      expect(result, equals([3])); // Expecting index 3 for the target '36'
    });

    test('Jump Search Test - Not Found', () {
      final list = ['1', '5', '35', '36', '75', '643'];
      final target = '100';
      final result = searchPoints.jumpSearch(list, target);
      expect(result, equals([])); // Target '100' should not be found
    });
  });
}
