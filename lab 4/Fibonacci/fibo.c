#include<stdio.h>
int fibonacci(int n) {
    if (n <= 1) {
        return n; // Base case: return n for 0 or 1
    }
    return fibonacci(n - 1) + fibonacci(n - 2); // Recursive case
}

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    
    if (n < 0) {
        printf("Fibonacci is not defined for negative numbers.\n");
    } else {
        printf("Fibonacci of %d is %d\n", n, fibonacci(n));
    }
    
    return 0;
}