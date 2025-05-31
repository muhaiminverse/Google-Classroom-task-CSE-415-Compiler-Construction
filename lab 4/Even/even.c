#include<stdio.h>
int even(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        if (arr[i] % 2 != 0) {
            return 0; // Found an odd number
        }
    }
    return 1; // All numbers are even
}
int main() {
    int arr[] = {2, 4, 6, 8, 10};
    int size = sizeof(arr) / sizeof(arr[0]);
    
    if (even(arr, size)) {
        printf("All numbers are even.\n");
    } else {
        printf("Not all numbers are even.\n");
    }
    
    return 0;
}