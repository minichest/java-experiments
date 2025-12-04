public class Main {
    public static void main(String[] args) {
        Word w1;
        w1 = new Word(4000, 20, "Research Into AI's effect on Society", 23);
        w1.printFileInfo();

        System.out.println();

        PowerPoint p1;
        p1 = new PowerPoint(12, 3, "Impacts of AI on the Environment", 30);
        p1.printFileInfo();
    }
}
