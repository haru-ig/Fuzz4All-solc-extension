pragma solidity ^0.8.0;
contract Caller {
  uint a = 100;
  uint b = 200;
  uint counter;

  constructor(uint _a, uint _b) {
    a = _a;
    b = _b;
    counter = 100;
  }

  function subtract(uint _b) public {
    counter = counter - _b;
  }

  function add(uint _b) public {
    counter = counter + _b;
  }
}
