public class Main {
    public static void main(String[] args) {
        Movie m1 = new Movie("The Shawshank Redemption");
        Movie m2 = new Movie("Blood & Gold", 7.2);
        Movie m3 = new Movie("The Lord of the Rings", 7.3, 178);
        Movie m4 = new Movie("The Godfather", 6.5, 1972, "Francis Ford Coppola", 175);

        m1.printMovieDetails();
        System.out.println();
        m2.printMovieDetails();
        System.out.println();
        m3.printMovieDetails();
        System.out.println();
        m4.printMovieDetails();
    }
}
