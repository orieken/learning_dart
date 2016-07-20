library learning_dart_test;

import 'simple.dart';
import 'package:test/test.dart';

main() {
  test("foo equals foo", () {
    expect("foo", equals("foo"));
  });

  test("foo is not bar", () {
    expect("foo", isNot(equals("bar")));
  });

  test("biggen", () {
    expect(embiggen("foo"), equals("FOO"));
  });

  test("null throws ArgumentError", () {
    expect(() => embiggen(null), throwsArgumentError);
  });
}
