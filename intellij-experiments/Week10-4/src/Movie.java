public class Movie {
    private final String title;
    private double imdbRating;
    private int releaseYear;
    private String director;
    private int lengthMinutes;

    public int getLengthMinutes() {
        if (lengthMinutes > 0 && lengthMinutes <= 240) {
            return lengthMinutes;
        } else {
            System.out.println("Movie too long");
            return 0;
        }
    }

    public void setLengthMinutes(int lengthMinutes) {
        this.lengthMinutes = lengthMinutes;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public int getReleaseYear() {
        if (releaseYear > 1900 && releaseYear < 2024) {
            return releaseYear;
        } else {
            System.out.println("Invalid year");
            return 0;
        }
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public double getImdbRating() {
        if(imdbRating > 0 && imdbRating <= 10) {
            return imdbRating;
        } else {
            throw new RuntimeException("Invalid Imdb Rating");
        }
    }

    public void setImdbRating(double imdbRating) {
        this.imdbRating = imdbRating;
    }

    public String getTitle() {
        if (title.length() > 1 && title.length() <= 100) {
            return title;
        } else {
            System.out.println("Title is too long or short");
            return null;
        }
    }

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