pragma solidity ^0.8.0;
contract Mod3
{
  uint f;

  function mod_with_f(uint x) public pure
  {
    uint _f = f;
    if (x > _f)
    {
      x = (_f * z)(x, _f, 2);
    }
  }
}
