function solution(num1, num2) {
    var a = (num1 / num2).toFixed(4);
    var b = a*1000
    var answer = Math.floor(b)
    return answer;
}