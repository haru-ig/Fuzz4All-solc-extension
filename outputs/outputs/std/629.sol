pragma solidity ^0.8.0;
contract StringSize3 {
  string constant str = "Hello World";
  uint8 public len;
  constructor() public {
    len = uint8(keccak256(bytes(str)));
  }
}
