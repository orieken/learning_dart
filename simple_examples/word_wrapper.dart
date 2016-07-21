library word_wrapper;

class WordWrapper {
  String word;
  int size;

  WordWrapper(this.word, this.size);

  String wrap() {
    if (this.word == null)
      return this.word;

    var result = this.word.replaceAll(' ', '');

    if (this.word.length <= this.size) {
      return this.word;
    } else {
      return result.split('').join('\n');
    }
  }
}