class Solution {
    public int[] solution(long n) {
        String str = String.valueOf(n);
        // char[] s = str.toCharArray(); // 문자열 -> 문자배열
        int[] answer = new int[str.length()];
        for(int i=str.length()-1;i>=0;i--) {//뒤집어서 입력
	            answer[str.length()-1-i] = str.charAt(i)-'0';
	    }
        return answer;
    }
}