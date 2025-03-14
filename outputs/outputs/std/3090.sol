pragma solidity ^0.8.0;
contract Array {
  function myFunc() public pure {
    uint x = 42;
    uint[] memory myArray = new uint[](10);
    myArray[0] = x;
  }
}
