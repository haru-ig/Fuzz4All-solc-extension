pragma solidity ^0.8.0;
contract P7{
  mapping (address => bool) public y;
  function g() public {
    if (!y[msg.sender]) {
      y[msg.sender] = true;
    }
  }
}
