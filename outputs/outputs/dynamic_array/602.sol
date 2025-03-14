pragma solidity ^0.8.0;
contract test43 {
  struct testStruct {
    bytes32 internalField;
  }
  bytes32 public a3;

  function test() public {
    bytes32 b = a3;
  }

  function setTest(bytes32 memory b) public{
    b = '1234';
    a3 = b;
  }
}
