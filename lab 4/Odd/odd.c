#include<stdio.h>
int odd(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        if (arr[i] % 2 == 0) {
            return 0; // Found an even number
        }
    }
    return 1; // All numbers are odd
}

int main() {
    int arr[] = {1, 3, 5, 7, 9};
    int size = sizeof(arr) / sizeof(arr[0]);
    
    if (odd(arr, size)) {
        printf("All numbers are odd.\n");
    } else {
        printf("Not all numbers are odd.\n");
    }
    
    return 0;
}