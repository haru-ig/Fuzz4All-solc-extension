pragma solidity ^0.8.0;
contract MutateMutOld
{
  function mod(uint x, uint y) public pure returns (uint)
  {
    require(y!= 0);
    x %= y;
    return x;
  }
  function test() public pure returns (uint) {

    return mod( 3, 2 );
  }
  modifier test { _; }
}
