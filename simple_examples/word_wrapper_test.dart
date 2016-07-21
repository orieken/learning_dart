library word_wrapper_test;

import 'word_wrapper.dart';
import 'package:test/test.dart';

main() {
  group("Word Wrapper", () {
    test('returns null when given null', () {
      var wrapper = new WordWrapper(null, 1);
      expect(wrapper.wrap(), equals(null));
    });
    test('returns x when size is 1 and string is x', () {
      var wrapper = new WordWrapper('x', 1);
      expect(wrapper.wrap(), equals('x'));
    });
    test(r'returns x\nx when size is 1 and string is xx', () {
      var wrapper = new WordWrapper('xx', 1);
      expect(wrapper.wrap(), equals('x\nx'));
    });
    test(r'returns x\nx\nx when size is 1 and string is xxx', () {
      var wrapper = new WordWrapper('xxx', 1);
      expect(wrapper.wrap(), equals('x\nx\nx'));
    });
    test(r'returns x\nx when size is 1 and string is x x', () {
      var wrapper = new WordWrapper('x x', 1);
      expect(wrapper.wrap(), equals('x\nx'));
    });
  });
}