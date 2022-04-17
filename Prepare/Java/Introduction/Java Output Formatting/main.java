import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
            Scanner sc=new Scanner(System.in);
            System.out.println("================================");
            for(int i=0;i<3;i++){
                String s1=sc.next();
                int x=sc.nextInt();
                //Complete this line
                // First String.format() is needed to use litarels like %s, %d and others
                // if %10s is given it will have white space at last
                // Means if 10 is declared and the variable have 4 char variable will take first place and then 6 white space will be added, if string have 6 char then 4 space will be added after it.
                // If %-10s is given it will have white space before it
                // Means if -10 is declared as negative and the variable have 4 char, space will take first 6 place and then 4 char  will be added, if string have 6 char then 4 space will be added before it.
                System.out.println(String.format("%-15s%03d", s1, x));
            }
            System.out.println("================================");

    }
}



