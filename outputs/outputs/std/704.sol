pragma solidity ^0.8.0;
contract Inverse
{
  function inverse(uint x) public pure returns (uint)
  {
    if (x == 0)
    {
      return 0;
    }
    return mod2(uint(1e18), x, 1e18);
  }
}
