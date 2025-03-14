pragma solidity ^0.8.0;
contract test44 {
  struct testStruct {
    bytes32 internalField;
  }
  function test() public {
    testStruct[] memory data = new testStruct[](1);
    data[1].internalField = testStruct( '123456789');
  }
}
