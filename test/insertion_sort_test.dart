import 'package:insertion_sort/insertion_sort.dart';
import 'package:test/test.dart';

void main() {
  test('Should return an ordered list of integers', () {
    expect(insertionSort([21, 24, 47, 60, 57, 1, 4, 5, 6, 71, 73]),
        [1, 4, 5, 6, 21, 24, 47, 57, 60, 71, 73]);
  });
}
