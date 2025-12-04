import java.util.Scanner;

public class Main {
    public static void main (String[] args)  {
        Scanner input = new Scanner(System.in);

        // Pattern
        PatternGen gen1;
        gen1 = new PatternGen();

        // Calls
        gen1.printPattern(4);
        gen1.printPattern(5, 15);
        gen1.printPattern(2, 15, '!');
        gen1.printPattern(3, '#');
    }

}
