List<int> insertionSort(List<int> listOfElements) {
  final listLength = listOfElements.length;

  for (var i = 1; i < listLength; i++) {
    final key = listOfElements[i];
    var j = i - 1;

    while (j >= 0 && listOfElements[j] > key) {
      listOfElements[j + 1] = listOfElements[j];
      j = j - 1;
    }

    listOfElements[j + 1] = key;
  }

  return listOfElements;
}
