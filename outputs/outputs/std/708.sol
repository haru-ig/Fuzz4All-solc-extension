pragma solidity ^0.8.0;
contract MutateGen
{
   uint constant f = 3;
  function mod(uint x, uint y) public pure returns (uint)
  {
    return x % y;
  }
  function mod2(uint x, uint y, uint z) public pure returns (uint)
  {
    x %= y;
    return x % y;
  }
  function mod3(uint x, uint y, uint z, uint w) public pure returns (uint)
  {
    x %= y;
    y %= z;
    return x % y % z;
  }
  function mod4(uint x, uint y, uint z, uint w, uint u) public pure returns (uint)
  {
    x %= y;
    x %= z;
    y %= w;
    return x % y % z % w;
  }
  function mod5(uint x, uint y) public pure returns (uint)
  {
    x %= y;
    return x % y;
  }
}

pragma solidity ^0.8.0;
contract Mutated : MutateMut
{
    uint constant f = 3;
  function mod(uint x, uint y) public pure returns (uint)
  {
    return y % x;
  }
  function mod2(uint x, uint y, uint z) public pure returns (uint)
  {
    return (x+2) % w;
  }
  function mod3(uint x, uint y, uint z, uint w) public pure returns (uint)
  {
    return w % x;
  }
  function mod4(uint x, uint y, uint z, uint w, uint u) public pure returns (uint)
  {
    return x % a;
  }
  function mod5(uint x, uint y) public pure returns (uint)
  {
    return mod(10, x) % mod(10, y);
  }
}
/* Please consider the following contract as the output of your
