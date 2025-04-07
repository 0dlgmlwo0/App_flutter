void main() {
  StringBuffer mdBuffer = StringBuffer();
  mdBuffer.writeln('# 구구단');

  for (int i = 2; i <= 9; i++) {
    mdBuffer.writeln('\n## ${i}단');
    for (int j = 1; j <= 9; j++) {
      mdBuffer.writeln('- **$i x $j** = ${i * j}');
    }
  }

  print(mdBuffer.toString());
}
