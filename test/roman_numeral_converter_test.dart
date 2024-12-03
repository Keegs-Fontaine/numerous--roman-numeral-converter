import 'package:numerus/roman_numeral_converter.dart';
import 'package:test/test.dart';

typedef NumeralTestCases = ({String numeral, int integerValue});

void main() {
  final numeralConverter = RomanNumeralConverter();

  final List<NumeralTestCases> numeralTestCases = [
    (numeral: "I", integerValue: 1),
    (numeral: "V", integerValue: 5),
    (numeral: "X", integerValue: 10),
    (numeral: "IV", integerValue: 4),
    (numeral: "XLI", integerValue: 41),
    (numeral: "DXC", integerValue: 590),
    (numeral: "MMDCCCLXXXIX", integerValue: 2889),
  ];

  for (final (:numeral, :integerValue) in numeralTestCases) {
    test("Converter converts $numeral to $integerValue", () {
      expect(numeralConverter.convertToInt(numeral), integerValue);
    });
  }
}
