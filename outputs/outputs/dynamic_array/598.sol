pragma solidity ^0.8.0;

interface testInterface {
  function test() isAValidDynamicArray;
}
contract test84 {
  testInterface test = testInterface(0);

  function isAValidDynamicArray() public pure returns (bool) {
    return true;
  }
}
