import java.util.Scanner;

public class TempConverter {
    public static void main(String[] args) {
        Scanner inputStream;
        inputStream = new Scanner(System.in);

        System.out.print("Enter a temperature in Fahrenheit: ");
        convertToCelsius(inputStream.nextDouble());
    }

    static double convertToCelsius(double fahrenheit) {
        double result = (fahrenheit - 32) * 5/9;
        System.out.println(result);
        return result;
    }
}