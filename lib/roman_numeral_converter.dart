class RomanNumeralConverter {
  final Map<String, int> numerals = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
  };

  int convertToInt(final String numeral) {
    int runningSum = 0;

    for (int i = 0; i < numeral.length - 1; i++) {
      final currentChar = numeral[i];
      final nextChar = numeral[i + 1];

      final currentNumeralValue = numerals[currentChar];
      final nextNumeralValue = numerals[nextChar];

      if (currentNumeralValue == null || nextNumeralValue == null) {
        throw Exception("Invalid Numeral Input: $numeral");
      }

      if (currentNumeralValue < nextNumeralValue) {
        runningSum -= currentNumeralValue;
      } else {
        runningSum += currentNumeralValue;
      }
    }

    runningSum += numerals[numeral.split("").last] ?? 0;

    return runningSum;
  }
}
