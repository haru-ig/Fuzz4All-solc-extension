pragma solidity ^0.8.0;
contract ArrayWithFunctions {
  function sum1() public pure returns (uint) {
    return arr[0] + arr[1];
  }
  function sum2() public pure returns (uint) {
    uint sum = 0;
    for (uint i = 0; i < arr.length; i++) {
     sum += arr[i];
    }
   return sum;
  }
  function sum3() public {
    uint sum = 0;
    for (uint i = 0; i < arr.length; i++) {
     sum += arr[i];
    }
    sum += 2;
  }
  uint[] public arr;
}
