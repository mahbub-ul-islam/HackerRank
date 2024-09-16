import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;

class Result {

    /*
     * Complete the 'hourglassSum' function below.
     *
     * The function is expected to return an INTEGER.
     * The function accepts 2D_INTEGER_ARRAY arr as parameter.
     */

    public static int hourglassSum(List<List<Integer>> arr) {
    // Write your code here
        
        int[][] arr1 = new int[4][4];
        
        for (int k=0; k<3; k++) {
            for (int i=k; i<k+4; i++) {
                for (int j=0; j<4; j++) {
                    int sum;
                    if (k==1) {
                        sum = arr.get(i).get(j+1);
                    } else {
                        sum = arr.get(i).get(j) + arr.get(i).get(j+1) + arr.get(i).get(j+2);
                    }
                    // System.out.println(sum);
                    
                    arr1[i-k][j] = arr1[i-k][j] + sum;
                    System.out.println(arr1[i-k][j]);
                }
                // System.out.println("J = " + i);
            }
            // System.out.println("K = " + k);
        }
        
        // to catch negative highest;
        int max = Integer.MIN_VALUE;
        for (int i=0; i<4; i++) {
            for (int j=0; j<4; j++) {
                if (max < arr1[i][j]) {
                    // System.out.println(arr1[i][j]);
                    max = arr1[i][j];
                }
            }
        }
        // System.out.println(max);
        
        return max;

    // Write your code here
    }

}

public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        List<List<Integer>> arr = new ArrayList<>();

        IntStream.range(0, 6).forEach(i -> {
            try {
                arr.add(
                    Stream.of(bufferedReader.readLine().replaceAll("\\s+$", "").split(" "))
                        .map(Integer::parseInt)
                        .collect(toList())
                );
            } catch (IOException ex) {
                throw new RuntimeException(ex);
            }
        });

        int result = Result.hourglassSum(arr);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedReader.close();
        bufferedWriter.close();
    }
}
