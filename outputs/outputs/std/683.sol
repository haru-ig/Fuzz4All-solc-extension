pragma solidity ^0.8.0;
contract MutateSemNotEqual3
{
  uint constant f = 0;
  uint _x;
  uint _y;
  function _noteq2(uint x, uint y, uint m) private pure returns (bool)
  {
    uint yNotEqual;
    if (x <= y)
    {
      yNotEqual = y;
    } else
    {
      yNotEqual = x;
    }
    if (yNotEqual == f)
    {
      return true;
    } else
    {
      return false;
    }
  }
  function mod_eq3(uint x, uint y) private pure returns (bool)
  {
    bool result = false;

    _x = x;
    _y = y;
    _noteq2(_x, _y, m);
    return result;
  }
}
import "./MutateSemNotEqual.sol";
contract MutateSemNotEqual4 is MutateSemNotEqual3
{
  function mod_equal4() public pure {
    require(mod_eq3(2, 3));
    MutateSemNotEqual3 mutator = new MutateSemNotEqual3();
    uint r = mutator.mod_equal4();

    bytes memory b = new bytes(r);
  }
}
