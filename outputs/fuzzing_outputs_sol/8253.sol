pragma solidity ^0.8.0;
contract SemanticSimilar13 {
  bool f;
  struct S1 {
    uint a;
  }
  function f() public {
    S1 memory s;
    s.a = 0x99;
    uint b = s.a + 10;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint x;
  function f() public {
    x >>= 1;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  uint x;
  function f() public {
    x *= 1;
  }
}

import "./SafeMath.sol";
pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function f() public returns (uint) {
    return 5;
    uint x = 5;
    bool a = a + x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar19 {
  uint x;
  function f(uint) public returns (uint) {
    x >>= 1;
    uint b = x >> 7;
  }
}
