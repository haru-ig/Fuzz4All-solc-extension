pragma solidity ^0.8.0;
contract Mutant11t
{
  mapping(address => uint256) public stored;
  function f() public view returns (uint256) {
    stored[msg.sender] = 0;
    return stored[msg.sender];
  }
  function h() public returns (uint256) {
    stored[msg.sender] = f() + 5;
    return stored[msg.sender];
  }
  function g() public view returns (uint256) {
    return stored[msg.sender];
  }
}



contract Mutant12t
{
  event Event(uint256 eventArg);
  mapping(address => uint256) public stored;
  uint256 public eventArg;
  function f() public view returns (uint256) {
    stored[msg.sender] = 0;
    return stored[msg.sender];
  }
  function g() public view returns (uint256) {
    return stored[msg.sender];
  }
  function h() public returns (uint256) {

    stored[msg.sender]++;
    (eventArg) = f();
    return eventArg;
  }
}
