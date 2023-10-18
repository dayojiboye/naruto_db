RegExp pascalWords = RegExp(r"(?<=[a-z])(?=[A-Z])");

String getTitles(String input) {
  final word = input.split(pascalWords);
  return word.join(" ").replaceAll(",", ", ").replaceAll(":", ": ");
}
