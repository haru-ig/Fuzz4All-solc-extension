pragma solidity ^0.8.0;
contract testWithNestedDynamicArray {
  function test() public {
    testStruct[2] memory a3;
    a3[0].firstWord = 'aaaaa';
  }
}
