pragma solidity ^0.8.0;
contract C {
  uint value;
  constructor() public {
    value = 123;
  }
  function getVariable(uint[] memory c) public {
    return c[0];
  }
  function returnVariable(uint x) public {
    return x + 345;
  }
  function setVariable(uint[] memory c) public {
    return c[7] = 1234;
  }
}
