import 'dart:math';

/// A class that contains various search algorithms.
class SearchPoints {
  /// Performs a linear search on the list for the target value.
  List<int> linearSearch(List<dynamic> list, dynamic target) {
    final int targetInt = int.tryParse(target) ?? -1;
    for (int i = 0; i < list.length; i++) {
      if (int.tryParse(list[i]) == targetInt) {
        return [i];
      }
    }
    return [];
  }

  /// Performs a binary search on the list for the target value.
  List<int> binarySearch(List<dynamic> list, dynamic target) {
    final int targetInt = int.tryParse(target) ?? -1;
    List<int> intList = list.map((e) => int.tryParse(e) ?? -1).toList();
    int left = 0;
    int right = intList.length - 1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (intList[mid] == targetInt) {
        return [mid];
      } else if (intList[mid] < targetInt) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return [];
  }

  /// Performs a jump search on the list for the target value.
  List<int> jumpSearch(List<dynamic> list, dynamic target) {
    final int targetInt = int.tryParse(target) ?? -1;
    List<int> intList = list.map((e) => int.tryParse(e) ?? -1).toList();
    int length = intList.length;
    int step = (sqrt(length)).toInt();
    int prev = 0;

    while (intList[min(step, length) - 1] < targetInt) {
      prev = step;
      step += (sqrt(length).toInt());
      if (prev >= length) return [];
    }

    while (intList[prev] < targetInt) {
      prev++;
      if (prev == min(step, length)) return [];
    }

    if (intList[prev] == targetInt) {
      return [prev];
    }

    return [];
  }
}
