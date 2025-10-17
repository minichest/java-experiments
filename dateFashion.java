public class dateFashion {
    public static void main(String[] args) {
        dateFashion exp2 = new dateFashion();
        System.out.println(exp2.dateFashion(5, 10)); // Expected output: 2
        System.out.println(exp2.dateFashion(5, 2));  // Expected output: 0
        System.out.println(exp2.dateFashion(5, 5));  // Expected output: 1
    }

    public int dateFashion(int you, int date) {
        if (date <= 2 || you <= 2) {
            return 0;
        } else if (you >= 8 || date >= 8) {
            return 2;
        } else {
            return 1;
        }
    }
}
