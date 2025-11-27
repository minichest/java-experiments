public class Bow extends Weapon {
    boolean isArrows;
    int arrows;

    Bow(String name, int damage, int cost, boolean isArrows, int arrows) {
        super(name, damage, cost);
        this.isArrows = isArrows;
        this.arrows = arrows;
    }

    void display() {
        super.display();
        System.out.println("Does it have arrows?: " + isArrows);
        System.out.println("Arrows: " + arrows);
    }
}