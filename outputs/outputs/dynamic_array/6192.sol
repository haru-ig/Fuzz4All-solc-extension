pragma solidity ^0.8.0;

contract D21 {
  I[] storage array = new I[](100);
  uint48 i;

  constructor() {
    i = 100;
  }
  function test (uint256[] memory arr) public {
    array[0] = arr;
  }

  function updateI() public {i = 5; }
}
