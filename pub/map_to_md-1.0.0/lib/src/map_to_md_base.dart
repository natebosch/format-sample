//  Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class MapToMarkdown {
  String table(List<Map<String, dynamic>> data) {
    try {
      String markdownTable = "";
      data[0].forEach(
        (key, value) {
          markdownTable += "| $key ";
        },
      );
      markdownTable += "|\n";
      markdownTable += "${"|-----" * data[0].keys.length}|\n";
      for (var row in data) {
        String markRow = "";
        row.forEach(
          (_, value) {
            markRow += "| $value ";
          },
        );
        markdownTable += "$markRow|\n";
      }
      return markdownTable;
    } catch (e) {
      return "$e";
    }
  }
}
