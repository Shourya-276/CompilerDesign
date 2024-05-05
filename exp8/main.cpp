#include <iostream>
#include <string>
#include <stack>
#include <cctype>
using namespace std;

int evaluateExpression(const string& expression) {
    stack<int> operands;
    stack<char> operators;

    for (char c : expression) {
        if (isdigit(c)) {
            operands.push(c - '0');
        } else if (c == '+' || c == '-' || c == '*' || c == '/') {
            operators.push(c);
        } else if (c == ')') {
            int operand2 = operands.top(); operands.pop();
            int operand1 = operands.top(); operands.pop();
            char op = operators.top(); operators.pop();
            int result;
            if (op == '+') {
                result = operand1 + operand2;
            } else if (op == '-') {
                result = operand1 - operand2;
            } else if (op == '*') {
                result = operand1 * operand2;
            } else if (op == '/') {
                result = operand1 / operand2;
            }
            operands.push(result);
        }
    }

    return operands.top();
}

int main() {
    string expression = "3+(4*2)";
    int result = evaluateExpression(expression);
    cout << "Result: " << result << endl;
    return 0;
}