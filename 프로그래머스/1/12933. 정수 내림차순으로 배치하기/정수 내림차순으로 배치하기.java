import java.util.*;

class Solution {
    public long solution(long n) {
        String str = ""+n; //문자열로 변형
        int[] arr = new int[str.length()];
        for(int i=0; i< str.length(); i++) {
            arr[i] = (int)(n%10);
            n/=10;
        }

        Integer[] tmp = Arrays.stream(arr).boxed().toArray(Integer[]::new);
        Arrays.sort(tmp, Collections.reverseOrder());//내림차순 정렬

        long answer = 0;
        int num = tmp.length; //다시 정수로 변환

        for(int i=0; i< tmp.length; i++) {
            answer += tmp[i] * (long) Math.pow(10, num-1);
            num-=1;

        }
        return answer;
    }
}