/**
 * Generates an sequence between two numbers.
 * @param min Minimal value
 * @param max Maximal value
 */
function* range(min = 0, max = Number.MAX_SAFE_INTEGER): Generator<number> {
  for (; min < max;) {
    yield min++;
  }
}
