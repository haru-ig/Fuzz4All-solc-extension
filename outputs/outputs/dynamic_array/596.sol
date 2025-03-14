pragma solidity ^0.8.0;
contract test43 {
  struct testStruct {
    bytes32 internalField;
  }

  function test() public {
    testStruct memory a3 = testStruct( '123456789');
  }
}
