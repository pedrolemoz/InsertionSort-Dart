/// This is the Insertion Sort algorithm written in Dart
List<int> insertionSort(List<int> listOfElements) {
  /// This is the length of the array
  final listLength = listOfElements.length;

  /// We'll iterate over the array, starting at the 2º index
  for (var currentIndex = 1; currentIndex < listLength; currentIndex++) {
    /// We're getting the current element to be ordered
    final element = listOfElements[currentIndex];

    /// We're getting the index of the previous element
    var previousIndex = currentIndex - 1;

    /// We should stop ordering in two scenarios:
    ///
    /// If the previous index equals zero, which means that we reached the end of
    /// the array.
    /// If the current element is greater than the element we want to order.
    while (previousIndex >= 0 && listOfElements[previousIndex] > element) {
      /// If the above verification equals true, it means that we need to move the
      /// current element to the next index
      listOfElements[previousIndex + 1] = listOfElements[previousIndex];
      previousIndex = previousIndex - 1;
    }

    /// If we reach this point, it means that previous index equals zero or the
    /// current element is greater than the element we want to order.
    /// In this case, we'll assign the next index to our element
    listOfElements[previousIndex + 1] = element;
  }

  return listOfElements;
}
