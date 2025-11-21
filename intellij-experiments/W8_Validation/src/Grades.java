import java.util.Arrays;
import java.util.Scanner;

public class Grades {
    public static void main(String[] args) {
        Scanner input;
        input = new Scanner(System.in);

        // array ints - 4
        int[] grades = new int[5];

        for(int i = 0; i < grades.length; i++){
            System.out.print("Enter grade " + (i+1) + ": ");
            grades[i] = validateGrade(input);
        }

        System.out.println("Hello, World!");
        System.out.println("Grades: " + Arrays.toString(grades));
        System.out.println("Average Grade: " + averageGrade(grades));
    }

    static int validateGrade(Scanner input) {
        int nextGrade = 0;
        while (true) {
            if (input.hasNextInt()) {
                nextGrade = input.nextInt();

                if (nextGrade >= 0 && nextGrade <= 100) {
                    System.out.println("Valid Grade.");
                    return nextGrade;
                }
            }
        }
    }

    static float averageGrade(int[] args) {
        int total = 0;
        float average = 0;

        for(int i=0; i < args.length; i++){
            total = total + args[i];
        }

        average = (float) total / args.length;
        return average;
    }
}