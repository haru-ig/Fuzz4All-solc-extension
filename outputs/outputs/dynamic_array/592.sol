pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct testStruct {uint32 size; bytes32[] firstWord;}
contract test43 {
  function test() public {
    testStruct memory a4 = testStruct( 5 );
  }
}
