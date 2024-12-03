import 'package:numerus/roman_numeral_converter.dart';
import 'package:test/test.dart';

void main() {
  final numeralConverter = RomanNumeralConverter();

  test("Converter converts I to 1", () {
    expect(numeralConverter.convertFromInt("I"), 1);
  });
}
