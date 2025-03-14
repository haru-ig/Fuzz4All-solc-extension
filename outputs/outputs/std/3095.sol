pragma solidity ^0.8.0;
contract Array {
  function myFunc(uint myValue) public pure {
    uint[] memory myArray = new uint[](1);
    myArray[0] = myValue;
  }
}
