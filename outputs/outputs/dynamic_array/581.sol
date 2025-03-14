pragma solidity ^0.8.0;
struct testStruct {
  bytes32 firstWord;
}
contract test42 {
  function test() public {
    testStruct memory a3 = testStruct('');
  }
}
