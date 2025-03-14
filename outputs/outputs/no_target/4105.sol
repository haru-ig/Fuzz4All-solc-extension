pragma solidity ^0.8.0;
contract SA11 {
  uint256 saddr;
  constructor(uint256 addr) { saddr = addr; }
  function a() public view returns(uint256) { return saddr; }
}
