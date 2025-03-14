pragma solidity ^0.8.0;
contract MutateMod
{
  function m(uint a, uint f) public
  {
    a %= f;
  }
}
