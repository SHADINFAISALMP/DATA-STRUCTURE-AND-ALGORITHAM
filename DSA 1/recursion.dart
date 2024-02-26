int factorial(int n) {
  if (n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  int fact = factorial(5); 

  print('factorial is 5 =$fact');
}
