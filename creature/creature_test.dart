library learning_dart_test;

import 'creature.dart';
import 'package:test/test.dart';

main() {
  var creature;

  setUp(() =>
    creature = new Creature('Dragon')
  );

  test('creature exists', () {
    expect(creature, new isInstanceOf<Creature>());
  });

  test('creature is a dragon', () {
    expect(creature.type, equals('Dragon'));
  });

  test('creature has 2 legs', () {
    expect(creature.numberOfLegs, equals(2));
  });
}