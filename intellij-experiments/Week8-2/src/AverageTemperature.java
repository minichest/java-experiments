import java.util.Scanner;

import java.util.Scanner;

public class AverageTemperature {
    public static void main(String[] args) {
        averageCalculator();
    }

    static void averageCalculator() {
        Scanner inputStream;
        inputStream = new Scanner(System.in);
        int iteration = 1;
        int sum = 0;
        int totalN = 0;

        while(iteration>0){
            System.out.println("Enter a number: ");
            int num = inputStream.nextInt();
            sum = sum + num;
            totalN = totalN + 1;

            if(num==-99){
                totalN = totalN - 1;
                sum = sum + 99;
                int average = sum / totalN;
                int modulus = (sum % totalN) / totalN;
                average = average + modulus;

                System.out.println("Your Total: " + sum);
                System.out.print("Your Average: " + average);
                break;
            }
        }
    }
}