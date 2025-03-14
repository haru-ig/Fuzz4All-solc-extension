pragma solidity ^0.8.0;
contract MutateMut
{
  uint constant f = 3;
  function mod(uint x, uint y) public pure returns (uint)
  {
    x %= y;
    return x % y;
  }
  function mod2(uint x, uint y, uint z)
    public
    pure
    returns (uint)
  {
    assert(x >= 0 && x < f);
    x %= y;
    x %= z;
    return x % y % z;
  }
  function mod3(uint x, uint y, uint z, uint w)
    public
    pure
    returns (uint)
  {
    assert(x >= 0 && x < f || x >= 0 && x < f && x < f);
    x %= y;
    y %= z;
    x %= y % z;
    return x % y % z % w;
  }
  function mod4(uint x, uint y, uint z, uint w, uint u)
    public
    pure
    returns (uint)
  {
    assert(x >= 0 && x < f);
    x %= y;
    x %= z;
    y %= w;
    x %= y % z % w;
    return x % y % z % w % u;
  }
}
contract MutateMut {
  function mod(uint x, uint y) public pure returns (uint) {
    x %= y;
    return x % y;
  }
}
