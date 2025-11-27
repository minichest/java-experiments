public class InternationalStudent extends Student {
    String country;

    public InternationalStudent(String name, int id, String department, String degree, String country) {
        super(name, id, department, degree);
        this.country = country;
    }

    void display() {
        super.display();
        System.out.println("Country: " + country);
    }
}