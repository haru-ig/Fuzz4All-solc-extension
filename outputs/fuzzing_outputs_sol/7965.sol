pragma solidity ^0.8.0;
contract Modified
{
  function sendEther(uint x, address addr) public
  {
    addr.send(x);
  }
}
