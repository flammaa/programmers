class Solution {
    public double solution(int[] arr) {
        double answer = 0;
        double sum = 0.0;
        
        for(double num : arr) {
            sum += num;
        }
        
        answer = sum/arr.length;
        
        return answer;
    }
}