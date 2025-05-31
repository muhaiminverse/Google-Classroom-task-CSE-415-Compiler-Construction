#include <stdio.h>

int twoSum(int arr[], int size, int target) {
    for (int i = 0; i < size; i++) {
        for (int j = i + 1; j < size; j++) {
            if (arr[i] + arr[j] == target) {
                
                return 1; 
            }
        }
    }
    return 0; 
}

int main() {
    int arr[] = {1, 2};
    int target = 1000; 
    int size = sizeof(arr) / sizeof(arr[0]);

    

    if (twoSum(arr, size, target)) {
        printf("A pair with the given sum exists.\n");
    } else {
        printf("No pair with the given sum exists.\n");
    }

    return 0;
}
