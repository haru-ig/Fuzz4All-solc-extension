pragma solidity ^0.8.0;
contract Addressable
{
  bytes32 public name;
  address public addr;
  uint[] public theBytes32;
  constructor(address _addr, bytes32 memory _name)
  {
    addr = _addr;
    name = _name;
    theBytes32[0] = 123;
  }
  function () external {
    return (addr, name, theBytes32);
  }
}
