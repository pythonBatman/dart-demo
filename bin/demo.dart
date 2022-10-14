import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Help data');
    exit(0);
  }
  String firstArgument = arguments.first;
  switch (firstArgument) {
    case 'avg':
      average(arguments);
      return;
    default:
      print('Help data');
      return;
  }
}

void average(List<String> arguments) {
  try {
    final numbers = arguments.sublist(1).map((e) => double.parse(e));
    final avg = numbers.fold<double>(0, (value, e) => value + e) / numbers.length;
    print('Average: $avg');
  } on FormatException {
    print('Invalid numbers');
  }
}
