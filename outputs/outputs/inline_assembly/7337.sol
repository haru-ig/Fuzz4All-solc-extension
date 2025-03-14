pragma solidity ^0.8.0;
contract Mutations_inline2 {
  uint constant constant1 = 10;
  uint constant constant2 = 100;
  uint constant constant3 = 90;
  uint constant constant4 = 70;
  function multiply(uint x, uint y) public pure returns(uint) {
    return x * y;
  }



  function add(uint x, uint y) public pure returns (uint) {
    return x + y;
  }
  function subtract(uint x, uint y) public pure returns(uint) {
    return x - y;
  }
  function negate(uint input) public pure returns(uint) {
    return -1*input;
  }
  function power(uint x, uint y) public pure returns (uint) {
    return 1*exp(x,y);
  }

  uint constant constant1 = 110;
  uint constant constant2 = 10;
  uint constant constant3 = 90;
  uint constant constant4 = 6;
}
