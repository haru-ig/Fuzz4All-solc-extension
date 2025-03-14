pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  function f() public {
    uint a = 1 / 2;
    a + 14;
    a - 1;
    a += 2;
    a = (a + 2) / 4;
    a = a - x;
    a *= -1;
    a *= 1;
    a /= 3;
    x = 3;
    x = ((x / 10) * 10) + 1;
    x = (1 - 100) + 1;
    x = a;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  function f() public {
    uint a = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    a > 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    a == 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    a & 100;
    a *= a;
    a > 1e24;
    a & -100;
    a >>= a;
    a < 1e25;
    a /= a;
    a -= a;
    a = a ^ a;
    a = a == -1;
    a == 0;
    a >= 10;
    a += a;
    a |= a;
    a >>= 1;
    a ^= a;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function f() internal returns (uint) {
    uint b = 0xFF;
    uint c = b;
    uint a = (b | 1) >> 1;
    uint g = ~(0b00000);
    return c;
  }
}
pragma solidity ^0.8.0;
