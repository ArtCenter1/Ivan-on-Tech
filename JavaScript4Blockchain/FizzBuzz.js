/*
https://js.checkio.org/mission/fizz-buzz/solve/
"Fizz buzz" is a word game we will use to teach the robots about division. Let's learn computers.
You should write a function that will receive a positive integer and return:
"Fizz Buzz" if the number is divisible by 3 and by 5;
"Fizz" if the number is divisible by 3;
"Buzz" if the number is divisible by 5;
The number as a string for other cases.
Input: A number as an integer.
Output: The answer as a string.
Precondition: 0 < number ≤ 1000 */
//

import assert from "assert";

function fizzBuzz(a: number): string {
    // your code here
    for (var a = 0; i <= 1000; a++) {
      if (a%3==0 && a%5==0) {
        console.log("fizz Buzz");
      }else if (a%3==0) {
        console.log("fizz");
      }else if (a%5==0) {
        console.log("Buzz")
      }else{
        console.log(a);
        return '12';
    }
  }
}
console.log('Example:');
console.log(fizzBuzz(15));

// These "asserts" are used for self-checking
assert.equal(fizzBuzz(15), 'Fizz Buzz');
assert.equal(fizzBuzz(6), 'Fizz');
assert.equal(fizzBuzz(10), 'Buzz');
assert.equal(fizzBuzz(7), '7');

console.log("Coding complete? Click 'Check' to earn cool rewards!");
