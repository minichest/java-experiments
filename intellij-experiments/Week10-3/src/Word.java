public class Word extends File {
    private int numWords;
    private int numPages;

    Word(int numWords, int numPages, String fileName, int fileSize) {
        super(fileName, fileSize);
        this.numWords = numWords;
        this.numPages = numPages;
    }

    public void printFileInfo() {
        super.printFileInfo();
        System.out.println("Word Count: " + numWords);
        System.out.println("Word Pages: " + numPages);
    }
}
