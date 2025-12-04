public class File {
    private String fileName;
    private int fileSize;

    File(String fileName, int fileSize) {
        this.fileName = fileName;
        this.fileSize = fileSize;
    }

    public void printFileInfo() {
        System.out.println("File Name: " + fileName);
        System.out.println("File Size: " + fileSize + "MB");
    }
}
