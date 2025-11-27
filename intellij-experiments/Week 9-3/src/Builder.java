import java.util.Arrays;

public class Builder extends TradesPerson {
    String[] tools = {"trowel", "hod", "shovel"};

    String keyTools = Arrays.toString(tools).replace("[", "").replace("]", "");


    Builder(String name, String trade, int wage) {
        super(name, trade, wage);
    }

    void display() {
        super.display();
        uses();
    }

    String uses() {
        System.out.println(name + " uses the following equipment: " + keyTools + " for his construction work.");
        return "";
    }
}