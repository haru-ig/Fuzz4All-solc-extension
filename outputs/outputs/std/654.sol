pragma solidity ^0.8.0;
contract Addressable
{
  address addr;
  bytes32 name;
  uint theBytes32;
}

pragma solidity ^0.8.0;
contract Addressable
{
  address addr;
  uint[] theBytes32;

  function create() public
  {
      addr = address(0xdeadbeef00000000000000000000000000000000000000000000000000000000);
      name = "a name";
      theBytes32[0] = 12345;
  }
}
