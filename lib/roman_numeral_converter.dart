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

  int _getNumeralValue(String char) {
    final numeralValue = numerals[char];

    if (numeralValue == null) {
      throw Exception("Invalid Numeral Input at Character: $char");
    }

    return numeralValue;
  }

  int _getNumeralSum(int currentNumeralValue, int nextNumeralValue) {
    if (currentNumeralValue < nextNumeralValue) return -currentNumeralValue;

    return currentNumeralValue;
  }

  int convertToInt(final String numeral) {
    int runningSum = 0;
    final numeralLength = numeral.length;

    for (int i = 0; i < numeralLength - 1; i++) {
      final currentChar = numeral[i];
      final nextChar = numeral[i + 1];

      final currentNumeralValue = _getNumeralValue(currentChar);
      final nextNumeralValue = _getNumeralValue(nextChar);

      runningSum += _getNumeralSum(currentNumeralValue, nextNumeralValue);
    }

    final lastNumeralValue = _getNumeralValue(numeral[numeralLength - 1]);
    runningSum += lastNumeralValue;

    return runningSum;
  }
}
