public class TradesPerson {
    String name;
    String trade;
    int wage;

    TradesPerson(String name, String trade, int wage) {
        this.name = name;
        this.trade = trade;
        this.wage = wage;
    }

    void display() {
        System.out.println("Name: " + name);
        System.out.println("Trade: " + trade);
        System.out.println("Wage: " + wage);
    }
}