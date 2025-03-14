pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct testStruct {
  bytes8 i1;
  bytes8 i2;
}
contract test42 {
  function test() public {
    testStruct memory a3 = testStruct( '');
  }
}
