pragma solidity ^0.8.0;
contract Mutant
{
  address public x;
  uint256 public x1;
  uint256 public x2;
  constructor() {
    x = msg.sender;
    x1 = 1;
    x2 = 2;
bytes memory b = keccak256(abi.encodePacked(x, x1));
  uint k = 7 * 0xFF + bytes(b)[1];
uint k = (uint8(bytes(b)[0]) ^ uint8(bytes(b)[1])) ^ (uint32(0xFF) ^ uint32(bytes(b)[2]));

    x1 = k;
    x2 = k * 3;
  }
  receive() external payable {}
}
