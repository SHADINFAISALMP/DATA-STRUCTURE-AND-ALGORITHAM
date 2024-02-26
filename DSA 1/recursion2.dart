int plus(int n) {
  if (n == 0) {
    return 0;
  }
  return n + plus(n - 1);

}
void main
(){
  int res= plus(50);
  print(res);
}