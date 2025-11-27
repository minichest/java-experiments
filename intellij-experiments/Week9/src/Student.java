public class Student extends Person {
    String department, degree;

    public Student(String name, int id, String department, String degree) {
        super(name, id);
        this.department = department;
        this.degree = degree;
    }

    void display() {
        super.display();
        System.out.println("Department: " + department);
        System.out.println("Degree: " + degree);
    }
}