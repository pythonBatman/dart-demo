void average(List<String> arguments) {
  try {
    final numbers = arguments.sublist(1).map<double>((e) => double.parse(e));
    final avg = numbers.fold<double>(0, (value, e) => value + e) / numbers.length;
    print('Average: $avg');
  } on FormatException {
    print('Invalid numbers');
  }
}
