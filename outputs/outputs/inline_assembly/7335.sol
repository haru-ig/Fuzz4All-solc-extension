pragma solidity ^0.8.0;
contract Semantics_inline4 {
  uint constant constant1 = 110;
  uint constant constant2 = 10;
  uint constant constant3 = 90;
  uint constant constant4 = 70;
  Semantics_inline2 internal myStruct;
  uint internal constant value1 = 110;
  address internal constant myAddress = 0x779c3C4862ef76821a1849E6169A041D0801A068;
  bytes32 constant mybytes32 = "Hello";

  function setConstants() public {
    myStruct.constant1 = constant2 + constant1;
    myStruct.constant1 = value1 + constant2;
    myStruct.constant1 = constant1 + value1;
    myStruct.constant1 = constant2 + value1;
  }
  function getConstants() public view returns (uint c1, uint c2, uint c3, uint c4, uint c5) {
    c1 = myStruct.constant1;
    c2 = myStruct.constant2;
    c3 = myStruct.constant3;
    c4 = myStruct.constant4;
    c5 = value1;

  }
}
