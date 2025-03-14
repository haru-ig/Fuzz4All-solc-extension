pragma solidity ^0.8.0;
contract NotEquivalent
{
  function sendAndCall(address contractAddress, uint x, bytes memory y) public payable { }
}
