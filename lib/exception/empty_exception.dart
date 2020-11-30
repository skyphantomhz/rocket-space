class EmptyException implements Exception {
  @pragma("vm:entry-point")
  const EmptyException();
  String toString() => "Empty data";
}
