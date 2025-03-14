pragma solidity ^0.8.0;
contract Convert {
  function myFunc() public pure {
    uint x = 1;
    uint a = uint.toUnsignedInt(x);
    uint b = uint.tounsignedInt(a);
    assert(a == 1);
    assert(b == 1);
    x = a;
    a = b;
    b = x;
    a = uint.toUnsignedInt(a);
    b = uint.toUnsignedInt(b);
    uint c = x + y;
    assert(c == a + b);
  }
}
