
class Sort {
    public static void main(String[] args)
    {
        int arr[] = { 5,7,6,8};
        System.out.println("Bubble Sorting Program in java");
        System.out.println("Sorting output:");
        for (int i = 0; i < arr.length; i++) {

            for (int j = i + 1; j < arr.length; j++) {
                int temp = 0;
                if (arr[j] < arr[i]) {
                    temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }

            System.out.print(arr[i] + " ");
        }
        System.out.println("");
    }
}
