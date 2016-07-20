library learning_dart;

String embiggen(String msg) {
  if (msg == null) {
    throw new ArgumentError("must not be null");
  }

  return msg.toUpperCase();
}