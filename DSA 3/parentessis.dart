bool isBalanced(String expression) {
  List<String> stack = [];

  for (int i = 0; i < expression.length; i++) {
    String currentChar = expression[i];

    if (currentChar == '(' || currentChar == '[' || currentChar == '{') {
      stack.add(currentChar);
    } else if (currentChar == ')' && stack.isNotEmpty && stack.last == '(') {
      stack.removeLast();
    } else if (currentChar == ']' && stack.isNotEmpty && stack.last == '[') {
      stack.removeLast();
    } else if (currentChar == '}' && stack.isNotEmpty && stack.last == '{') {
      stack.removeLast();
    } else {
      return false; // Unmatched closing parenthesis or invalid character
    }
  }

  return stack.isEmpty;
}

void main() {
  String balancedExpression = "{[()]}";
  String unbalancedExpression = "{[(])}";
  String another = "{()}";

  print("$balancedExpression is balanced: ${isBalanced(balancedExpression)}");
  print(
      "$unbalancedExpression is balanced: ${isBalanced(unbalancedExpression)}");

  print("$another ${isBalanced(another)}");
}
