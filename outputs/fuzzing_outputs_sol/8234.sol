pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  uint32 constant private a = 0x800000000000000;
  uint8 c;
  function g() public {
    c = 1;
    c = a + c;
    c = c * 100;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar12 {
  uint12 a;
  function h() public {
    a++;
    a--;
    a >>= 1;
    a <<= 1;
    uint8 c;
    c = a + 0x1;
  }
}
