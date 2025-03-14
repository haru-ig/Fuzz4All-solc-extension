pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct testStruct {
  bytes32 firstWord;
}
contract test1 {
  function test1(address _a) public {
    testStruct memory a3 = testStruct( bytes32(_a));
  }
}
