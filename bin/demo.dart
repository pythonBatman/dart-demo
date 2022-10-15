import 'package:demo/average.dart';
import 'package:demo/show_binary_file.dart';

void main(List<String> arguments) {
  try {
    String firstArgument = arguments.first;
    switch (firstArgument) {
      case 'avg':
        average(arguments);
        return;
      case 'binary':
        showBinaryFile(arguments);
        return;
      default:
        throw Exception();
    }
  } catch (error) {
    print('HELP');
  }
}
