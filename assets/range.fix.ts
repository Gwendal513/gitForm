interface RangeOptions {
  start: number;
  stop: number;
  step: number;
}

/**
 * Generate sequence between two numbers.
 * @param options Options
 */
function* range(options: Partial<RangeOptions> = {}): Generator<number> {
  const { start, stop, step }: RangeOptions = {
    start: 0,
    stop: Number.MAX_SAFE_INTEGER,
    step: 1,
    ...options,
  };
  for (let i = start; i < stop; i += step) {
    yield i++;
  }
}
