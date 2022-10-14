void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    print('Hello ${arguments.first}');
  } else {
    print('Hello nobody');
  }
}
