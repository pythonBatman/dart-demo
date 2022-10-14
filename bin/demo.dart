import 'package:demo/average.dart';

void main(List<String> arguments) {
  try {
    String firstArgument = arguments.first;
    switch (firstArgument) {
      case 'avg':
        average(arguments);
        return;
      default:
        throw Exception();
    }
  } catch (error) {
    print('HELP');
  }
}
