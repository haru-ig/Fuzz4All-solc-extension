pragma solidity ^0.8.0;
contract C {
    uint8 public value = 1;
    constructor() {value = 1;}
    function test(uint8 x) public {
      value = 4;
      value = 5;
      value = 6;
    }
}
