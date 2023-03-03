int fibonacci(int n) {
  print('------- FIBONACCI -------');
  if (n == 0 || n == 1) {
    return n;
  }
  return (fibonacci(n - 1) + fibonacci(n - 2));
}
