pragma solidity ^0.8.0;
contract SemanticSimilar8 {
  function f() public {
    uint b = 0;
    b = 1;
    b = b + 200001i;
    b = 0;
    b = 1i;
    b = b * 100001i;
    b = b * 10i;
    b = b + 1i;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar6 {
  uint256 a;
  uint b;
  function f() public pure returns (uint, uint) {
    return (a, b);
  }
}
contract SemanticSimilar11 {
  uint8 b;
  uint8 b0;
  uint8 b1;
  uint8 b2;
  uint8 b3;
  uint8 b4;
  uint8 b5;
  uint8 b6;
  uint8 b7;
  uint8 b8;
  uint8[4] b9;
  function f() public pure {
    return (uint8(b),b0,b1,b2,b3,b4,b5,b6,b7,b8,b9);
  }
}
