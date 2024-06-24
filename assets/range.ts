/**
 * Generates an endless sequence of numbers.
 * @param min Minimal value
 */
function* range(min = 0): Generator<number> {
  for (;;) {
    yield min++;
  }
}
