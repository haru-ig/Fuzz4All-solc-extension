pragma solidity ^0.8.0;
contract SemanticSimilar385_mod1 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    uint256 b = a;
  }
}
contract SemanticSimilar385_mod3_fallback {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 1;
  }
  fallback () public payable {}
}
contract SemanticSimilar385Fallback {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () public {
    uint256 b = a;
  }
}
contract SemanticSimilar385_mod4_fallback {
  uint256 a;
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () public {
    uint256 b = a;
  }
}
contract SemanticSimilar385_mod4 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    uint256 b = a;
  }
}
