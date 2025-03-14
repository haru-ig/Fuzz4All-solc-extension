pragma solidity ^0.8.0;
contract SemanticEquivalentB
{
  uint8 a;
  uint16 b;
  uint64 c;
  uint128 d;
  bool e;

  function g() external pure {
    bool b = true;
    (b, c);
  }
  int8 h;
  struct S1
  {
    uint16 field_d;
  }
}
pragma solidity ^0.8.0;

contract ContractWithFallback
{
  function a() public pure returns (int8) {
    int8 a = 10;
    (int8 b, bool _c);
    (int8 d, bool e) = (10, true);
    (int8 h) = -1;
    (bool i) = a < 17;
    (bool _ii) = c;
    (bool _iii) = b;
    (b, c) = (true, false);
    (bool _j, int8 _k) = (c, a);
    (b, c, d) = (true, true, 10);
    (e, f, g) = (true, true, true);
    (, ) = (true, true);
    (,, ) = (true, true, true);
    (h) = 15;
    return a;
  }

  function b() public returns (int16) {
    int16 b = -15;
    (, int16 c) = (a, 10);
    (a, int16 d, b) = (true, true, a);
    (a, uint16 e) = (true, true);
    (a, int16 _f) = (true, 10);
    (, int16 _g) = (true, c);
    (a, int16 _h) = (true, c);
    (int16 i) = b;
    (a, b, b) = (10, 0, true);
    (, ) = (10, 0);
    (a, int16) = (true, true);
    (, a) = (0, true);
    uint128 b_int128 = 10000;
    (a, b, uint128 c) = (uint16(true), true, b_int128);
