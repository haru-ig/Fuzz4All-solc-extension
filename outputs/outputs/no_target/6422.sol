pragma solidity ^0.8.0;
contract modifiedB1 is modifiedB2 {
  function f(uint8 i) public returns (uint8) {
    return i!=0? 1 : 0;


  }
  function f1(uint8 i) public returns (uint8) {
    return i!=0? 1 : 0;


  }
}
