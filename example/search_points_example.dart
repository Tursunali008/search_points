import 'package:search_points/search_points.dart';

void main() {
  final searchPoints = SearchPoints();

  // Sample data list as strings
  final list = ['1', '36', '75', '35', '643', '5'];

  // Test linear search
  final linearSearchTarget = '35';
  final linearSearchResults = searchPoints.linearSearch(list, linearSearchTarget);
  print('Linear Search Results for "$linearSearchTarget": $linearSearchResults');

  // Test binary search (requires sorted list)
  final sortedList = ['1', '5', '35', '36', '75', '643'];
  final binarySearchTarget = '36';
  final binarySearchResults = searchPoints.binarySearch(sortedList, binarySearchTarget);
  print('Binary Search Results for "$binarySearchTarget": $binarySearchResults');

  // Test jump search (requires sorted list)
  final jumpSearchTarget = '75';
  final jumpSearchResults = searchPoints.jumpSearch(sortedList, jumpSearchTarget);
  print('Jump Search Results for "$jumpSearchTarget": $jumpSearchResults');
}
