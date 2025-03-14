pragma solidity ^0.8.0;

contract Mutant
{

  uint16 w1;
  uint128 w2;
  uint256 w3;

  uint public v = 0;

  function mutant ()
    public view returns (uint)
  {
    return (v  + 1000)*1000000000;
  }
}
contract Mutant2
{
  struct Rectangle
  {
    uint256 a;
    uint256 b;
  }

  function mutant ()
  public
  view
  returns (Rectangle memory)
  {
    return (Rectangle(0, 100));
  }
}
contract Mutant20
{
  function mutant (Rectangle memory)
  public
  view
  returns (uint)
  {
    return 100 + memory.a + memory.b;
  }
}
