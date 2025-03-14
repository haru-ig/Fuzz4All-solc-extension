pragma solidity ^0.8.0;
contract MutatedArray {
  uint public array[10];
  function set(uint x) public {
    array[4] = 32;
    array[3] = 31;
    array[2] = 30;
    array[1] = 29;
    array[0] = 28;
  }
}
