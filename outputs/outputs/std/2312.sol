pragma solidity ^0.8.0;
contract Mutated {
    function add(uint16 x, uint16 y) public pure returns (uint16 z) {
        z = x + y;
        y = max(y, 0);
        x = max(x, 0);
        if (z < 0) {
            z = max(z + x * (1073741824 - 1), 0);
        }
    }
    function fizzBuzz(uint16 x) public pure returns (string memory) {
        (string memory z) =  if (x < 10) {
            return x!= 0? "0" : x;
        } else if (x < 20) {
            return "Fizz";
        } else if (x < 30) {
            return "Buzz";
        } else {
            return "FizzBuzz";
        }
    }
    function multiply(uint16 x, uint16 y) public pure returns (uint16 z) {
        z = x * y;
        x = max(x, 0);
        y = max(y, 0);
        if (z < 0) {
            z = max(z + x * (1073741824 - 1), 0);
        }
    }
}
