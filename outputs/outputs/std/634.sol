pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Arithmetic {
  uint[2] public myArray;
  uint public max;
  uint public min;

  function sum() public pure returns(uint) {
    return myArray[0] + myArray[1];
  }
  function maximum() public pure returns(uint) {
    return myArray[0] > myArray[1]? myArray[0] : myArray[1];
  }
  function minimum() public pure returns(uint) {
    return myArray[0] < myArray[1]? myArray[0] : myArray[1];
  }
}
