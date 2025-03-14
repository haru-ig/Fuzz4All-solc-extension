pragma solidity ^0.8.0;
contract Array {
  uint8 x = 5;
  uint8 y = 5;
  bytes32 myArray = bytes32("myArray");
  address public adr = 0x123475899;
  function setArray() public {
    myArray = bytes32(adr);
  }
}
pragma solidity 0.8.4;
contract Array {
  uint8 x = 5;
  uint8 y = 5;
  string myArray = "myArray";
  address public adr = 0x123475899;
  function setArray() public {
    myArray = string(adr);
  }
}
