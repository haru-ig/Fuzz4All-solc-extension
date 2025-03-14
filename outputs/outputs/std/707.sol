pragma solidity ^0.8.0;
contract MutateMod
{
  uint constant f = 3;
  uint constant constantN = 4;
  function mod(uint x, uint y) public pure returns (uint)
  {
    return constantN + x % y;
  }
  function mod2(uint x, uint y, uint z) public pure returns (uint)
  {
    return constantN + x % y + (x % z) % y;
  }
  function mod3(uint x, uint y, uint z, uint w) public pure returns (uint)
  {
    return constantN + x % y + (x % z) % y + (x % w) % z;
  }
  function mod4(uint x, uint y, uint z, uint w, uint u) public pure returns (uint)
  {
    return constantN + x % y + (x % z) % y + (x % w) % z + x % u;
  }
  function mod5(uint x, uint y) public pure returns (uint)
  {
    return constantN + x % y + x % f;
  }
}

pragma solidity ^0.8.0;
contract Test03
{
  function Test03(uint a)
  {
    MutateMut test;
    x = test.mod5(f, a);
  }
  function test(uint b)
  {
    MutateMod test = MutateMod(0x2000);
    x = test.mod2(f, b, f);
    assert(x == 3);
  }
  uint constant f = 3;
  uint constant constantN = 4;
  uint constant x;
}
