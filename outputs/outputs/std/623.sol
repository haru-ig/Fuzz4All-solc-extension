pragma solidity ^0.8.0;
contract StringSize2 {
  string constant str = "Hello World";
  uint256 public len;
  constructor() public {
    len = uint256(keccak256(bytes(str)));
  }
}
