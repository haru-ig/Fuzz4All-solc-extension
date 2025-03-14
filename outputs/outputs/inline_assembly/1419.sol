pragma solidity ^0.8.0;
contract Mutant9t
{
  mapping(address => uint256) public stored;
  function f() public returns (uint256) {
    stored[msg.sender] = 0;
    return stored[msg.sender];
  }
  function g() public view returns (uint256) {
    return stored[msg.sender];
  }
}
