public class ConstructorDemo {
    public ConstructorDemo(String[] args) {
        Movie[] movies = new Movie[4];

        movies[0] = new Movie("The Shawshank Redemption");
        movies[1] = new Movie("Blood & Gold", 72);
        movies[2] = new Movie("The Lord of the Rings", 73, 178);
        movies[3] = new Movie("The Godfather", 73, 1972, "Francis Ford Coppola", 175);
    }
}
