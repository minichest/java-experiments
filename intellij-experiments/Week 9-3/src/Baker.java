import java.util.Arrays;

public class Baker extends TradesPerson {
    String speciality;

    Baker(String name, String trade, int wage, String speciality) {
        super(name, trade, wage);
        this.speciality = speciality;
    }

    void display() {
        super.display();
    }

    String makes() {
        System.out.println(name + " specialises in making " + speciality + ".");
        return "";
    }
}