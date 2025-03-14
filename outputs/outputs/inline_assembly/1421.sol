pragma solidity ^0.8.0;
contract Mutant10t
{
  uint256 stored;
  mapping(address => uint256) public stored;
  function f() public returns (uint256) {
    stored = 0;
    return stored;
  }
  function g() public view returns (uint256) {
    return stored;
  }
}
