pragma solidity ^0.8.0;
contract Mutant10t6
{
  struct Rectangle
  {
    uint128 a;
    uint128 b;
  }



  function display_rectangle(Rectangle memory rectangle) public pure
  {
    assembly {
      let (a, b) := rectangle
      return(a, b)
    }
  }
}
