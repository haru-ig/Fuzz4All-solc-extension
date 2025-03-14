pragma solidity ^0.8.0;
contract MutateSemEqual
{
  uint constant f = 1;
  function mod_equal(uint x, uint y) public pure returns (uint)
  {
    uint yEqu = 1;
    if (x <= y)
    {
      yEqu = x;
    } else
    {
      yEqu = y;
    }
    if (yEqu == f)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
*/
