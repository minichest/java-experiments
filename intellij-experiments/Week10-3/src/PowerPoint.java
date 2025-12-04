public class PowerPoint extends File {
    private int numSlides;
    private int numAnimations;

    PowerPoint(int numSlides, int numAnimations, String fileName, int fileSize) {
        super(fileName, fileSize);
        this.numSlides = numSlides;
        this.numAnimations = numAnimations;
    }

    public void printFileInfo() {
        super.printFileInfo();
        System.out.println("Number of Slides: " + numSlides);
        System.out.println("Number of Animations: " + numAnimations);
    }
}
