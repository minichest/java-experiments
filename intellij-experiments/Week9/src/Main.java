public class Main {
    public static void main(String[] args) {
        Person person1;
        person1 = new Person("John", 191);
       person1.display();

        Student student1;
        student1 = new Student("Abel", 902, "STEM", "Computer Science");
        student1.display();

        InternationalStudent is1;
        is1 = new InternationalStudent("Alisha", 306, "Humanities", "History", "USA");
        is1.display();
    }
}