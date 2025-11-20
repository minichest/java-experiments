import java.util.Scanner;

import java.util.Scanner;

public class Week8AdvancedScanner {
    public static void main(String[] args) {
        averageCalculator();
    }

    static void averageCalculator() {
        Scanner inputStream;
        inputStream = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int iteration = inputStream.nextInt();
        int sum = 0;

        for(int i=0; i<iteration; i++) {
            System.out.println("Enter a number: ");
            int num = inputStream.nextInt();
            sum = sum + num;
        }

        int average = sum / iteration;

        System.out.println("Your Total: " + sum);
        System.out.print("Your Average: " + average);
    }
}