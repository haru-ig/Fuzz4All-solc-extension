pragma solidity ^0.8.0;
contract Mutant12n4
{
  modifier rectangle
  {
    uint128 res;
    uint128 count = 10;
    for (uint128 i = 0; i <= count; ++i, ++res)
      b[count] = res;
    b[1] = 2 * res;
    uint128 temp;
    for(uint256 j = 2; j <= 3; ++j)
    {
      for(uint128 k = j * count / 4 - 1; k >= 0; k--)
        temp = temp << 1;
      res = res ^ 5 * temp + 3;
      temp = count + 1;
      for(uint256 m = 1; m <= j;++m)
        temp >>= 1;
    }
    count = count + 100;
    yield (count, res);
  }
  constructor ()
    public
    rectangle
    {
    }
  mapping (uint256 => Uint128Array) b;
}
#pragma warning(pop)
