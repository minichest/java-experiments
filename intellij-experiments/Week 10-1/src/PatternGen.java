import java.util.Scanner;

public class PatternGen {
    private final char patternChar = '@';
    Scanner input = new Scanner(System.in);

    public void printPattern(int rows) {
       for (int i = 0; i < rows; i++) {
           System.out.print(patternChar);
           System.out.println();
       }
    }

    public void printPattern(int rows, char patternChar) {
        for (int i = 0; i < rows; i++) {
            System.out.print(patternChar);
            System.out.println();
        }
    }

    public void printPattern(int rows, int cols) {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print(patternChar);
            }
            System.out.println();
        }
    }

    public void printPattern(int rows, int cols, char patternChar) {
        // System.out.println("Send your character: ");
        // patternChar = input.next().charAt(0);

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print(patternChar);
            }
            System.out.println();
        }
    }
}
