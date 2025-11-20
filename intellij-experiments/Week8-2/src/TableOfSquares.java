public class TableOfSquares {
    public static void main(String[] args) {
        int iteration = 13;
        System.out.print("Number - Squared - Cubed \n");

        for(int row=1; row<iteration; row++) {
            int number = row;
            int squaredNo = number * number;
            int cubedNo = squaredNo * number;
            System.out.print(number + " - " + squaredNo + " - " + cubedNo + "\n");
        }
    }
}