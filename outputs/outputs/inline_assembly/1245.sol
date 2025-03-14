pragma solidity ^0.8.0;
contract Mutant
{
  uint32 public x;
  constructor() {
    emit NewCoin(uint32(uint160(address(this).balance)), 0xF0000);
  }
  receive() external payable {}
  event NewCoin(uint256, uint32);
}
