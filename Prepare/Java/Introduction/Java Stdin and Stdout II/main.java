import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int i = scan.nextInt();
        double d = scan.nextDouble();
        // need to add a nextLine method after all nextInt or nextDouble
        // to consume to enter hit by user '\n'
        // because except for the nextLine method all of them only read the value
		// from the user making leftover of '\n' which is entered after the value
        scan.nextLine();
        String s = scan.nextLine();
        scan.close();

        // Write your code here.

        System.out.println("String: " + s);
        System.out.println("Double: " + d);
        System.out.println("Int: " + i);
    }
}