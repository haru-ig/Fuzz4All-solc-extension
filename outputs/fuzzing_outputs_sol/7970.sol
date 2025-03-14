pragma solidity ^0.8.0;
contract Equivalent
{
  address public addr;
  uint public x;
  bytes memory public y;
  constructor(uint, bytes memory, address) public { }
  function sendAndCall() public payable { addr.send(x); }
}

pragma solidity ^0.8.0;
contract Equivalent
{
  address public addr;
  uint public x;
  bytes memory public y;
  constructor(address, uint, bytes memory) public { }
  receive() external pure virtual { }
}
