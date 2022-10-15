import 'dart:io';

void showBinaryFile(List<String> arguments) {
  final file = File(arguments[1]);
  if (!file.existsSync()) {
    print('File does not exist');
    return;
  }
  final bytes = file.readAsBytesSync().toList();
  final binary = bytes.map<String>((e) => e.toRadixString(2)).join();
  print(binary);
}
