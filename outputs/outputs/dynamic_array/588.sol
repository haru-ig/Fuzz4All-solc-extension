pragma solidity ^0.8.0;
struct testStruct {
  bytes32 firstWord;
}
contract test43 is testStruct {
  function test() public {
    bytes32[] memory a3 = [testStruct(''), testStruct(''), testStruct('')];
  }
}
