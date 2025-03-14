pragma solidity ^0.8.0;
contract Test
{
 constructor() public
{
  assembly {
    self is not() switchto 0
  }
 }
}
