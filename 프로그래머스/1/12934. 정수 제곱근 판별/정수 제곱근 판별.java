class Solution {
    public long solution(long n) {
        
        long x = (long) Math.sqrt(n);
        
        if (x * x == n) { // 제곱근을 다시 제곱했을 때 원래 값과 같은지 확인
            return (x + 1) * (x + 1); // (x+1)의 제곱 반환
        } else {
            return -1; // 제곱수가 아니라면 -1 반환
        }
    }
}