pragma solidity ^0.8.0;
contract SemanticSimilar13 {
  bool f3;
  bool f2;
  bool f1;
  bool f31;
  bool f21;
  bool f32;
  bool f22;
  modifier s3() {
    if (f3)
      throw;
    else {
      if (f31)
        f22 = true;
      if (f32)
        assert(f22);
      return;
    }
  }
  modifier s2() {
    if (f2)
      throw;
    else {
      if (f21)
        throw;
      else
        return;
    }
  }
  modifier s1() {
    if (f1)
      throw;
    else {
      if (f31)
        throw;
      return;
    }
  }
  modifier noF() {
    f = true;
    throw;
  }
  function f() internal {
    require(f);
  }
  function g() public {
    bool b1;
    bool b2;
    bool b3;
    (b1, b2, b3) -= (true, true, true);
    (b1, b2, b3);
    (b1, b2, b3) = (true, false, true);
    (b1, b2, b3) /= (true, true, true);
    (b1, b2, b3) <<= 5;
    (b1, b2, b3) >>= 2;
    (b1, b2, b3) += 5;
    (b1, b2, b3) -= 12;
    (b1, b2, b3) ^= true;
    (b1, b2, b3) == (true, true, true);
    (b1, b2, b3)!= (true);
    (b1, b2, b3) &= (true, true, true);
    (b1, b2, b3) |= (true, true, true);
    (b1, b2, b3) ^= (true, true, true);
    (b1, b2, b3) >>= (true, true, true);
    (b1, b2, b3) <<= (true, true,
