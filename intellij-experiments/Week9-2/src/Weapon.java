public class Weapon {
    String name;
    int damage;
    int cost;
    int durability;

    Weapon(String name, int damage, int cost) {
        this.name = name;
        this.damage = damage;
        this.cost = cost;
    }

    void display() {
        System.out.println("Name: " + name);
        System.out.println("Damage: " + damage);
        System.out.println("Cost: " + cost);
    }
}