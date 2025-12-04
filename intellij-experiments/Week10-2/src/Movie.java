public class Movie {
    private final String title;
    private double imdbRating;
    private int releaseYear;
    private String director;
    private int lengthMinutes;

    public Movie(String title) {
        this.title = title;
    }

    public Movie(String title, double imdbRating) {
        this.title = title;
        this.imdbRating = imdbRating;
    }

    public Movie(String title, double imdbRating, int lengthMinutes) {
        this.title = title;
        this.imdbRating = imdbRating;
        this.lengthMinutes = lengthMinutes;
    }

    public Movie(String title, double imdbRating, int releaseYear, String director, int lengthMinutes) {
        this.title = title;
        this.imdbRating = imdbRating;
        this.releaseYear = releaseYear;
        this.director = director;
        this.lengthMinutes = lengthMinutes;
    }

    public void printMovieDetails() {
        System.out.println("Title: " + title);
        System.out.println("Imdb Rating: " + imdbRating);
        System.out.println("Release Year: " + releaseYear);
        System.out.println("Director: " + director);
        System.out.println("Length Minutes: " + lengthMinutes);
    }
}
