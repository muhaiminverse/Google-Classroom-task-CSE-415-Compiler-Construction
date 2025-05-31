#include<stdio.h>
int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int sum = 0;
    int size = sizeof(arr) / sizeof(arr[0]);

    for(int i = 0; i < size; i++) {
        sum += arr[i];
    }

    printf("The sum of the array elements is: %d\n", sum);
    return 0;
}