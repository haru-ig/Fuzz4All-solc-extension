pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidityPointers3 {
  struct Test {
    uint[] anArray;
    function Test(uint _anArray) {
      anArray = _anArray;
    }
  }
  function F() external {
    Test memory test;
    test.anArray[0] = 0;
  }
}
