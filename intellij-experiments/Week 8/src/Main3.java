public class Main3 {
    public static void main() {
        // Vars
        String name = "Edi";
        int myAge = 19;
        int myHeight = 181;

        // Messages
        System.out.println("Hello, I'm, " + name);
        System.out.println("I'm currently " + myAge + " years old.");
        System.out.println("I'm also " + myHeight + " cm tall.");
        blockOfChars('x', 3, 5);
    }

    static void blockOfChars(char ch, int rows, int cols) {
        for (int r = 0; r < rows; r++) {
            for (int c=0; c<cols; c++) {
                System.out.print(ch);
            }

            System.out.println("\n");
        }
    }
}