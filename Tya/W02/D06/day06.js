// 1. Define a function maxOfTwoNumbers that takes two numbers as arguments and returns the largest of them.

var maxOfTwoNumbers = function(x, y) {
  if (x > y) {
    return x;
  } else {
    return y;
  }
}

// 2. Define a function maxOfThree that takes three numbers as arguments and returns the largest of them.

var maxOfThree = function(x, y, z) {
  var largestNum = x;
  if (y > largestNum) {
    var largestNum = y;
  }
  if (z > largestNum) {
    var largestNum = z;
  }
  return largestNum;
}

// OR Math.max method

var maxOfThree = function(num1, num2, num3) {
  return Math.max(num1, num2, num3)
}

// 3. Write a function isCharacterAVowel that takes a character (e.g. a string with length of 1) and returns true if it is a vowel, and false if it is not a vowel.

var isCharacterAVowel = function(string) {
  var vowels = ["a", "e", "i", "o", "u"];
  if (string.length !== 1) {
    alert("You provided a string with more than one character.");
  } else if (vowels.includes(string)) {
    return true;
  }
  else {
    return false;
  }
}

// 4. Define a function sumArray and a function multiplyArray that sums and multiplies all the numbers in an array of numbers. e.g. sumArray([1,2,3,4]) should return 10 and multiplyArray([1,2,3,4]) should return 24.

var sumArray = function(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum;
}

var multiplyArray = function(array) {
  var product = 1;
  for (var i = 0; i < array.length; i++) {
    product *= array[i];
  }
  return product;
}

// OR

function sumArray(array) {
  return array.reduce(function(a, b){
    return a + b;
  });
}

function multiplyArray(array) {
  return array.reduce(function(a, b){
    return a * b;
  });
}

// 5. Write a function that returns the number of arguments passed to the function when called.

var numOfArgs = function(){
  var args = arguments.length;
  return args;
}
