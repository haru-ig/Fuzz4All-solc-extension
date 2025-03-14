pragma solidity ^0.8.0;
contract SemanticSimilar20 {
  function f(uint) public {
    for (uint i = 0; i < 10; i++) {
      uint x;
      if (false)
        x;
    }
    uint j; j; j;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar22 {
  function f(uint) public {
    uint x;
    uint y;
    x;
    y;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar23 {
  function f(uint) public {
    uint x;
    uint y;
    x; x x; x; x;
    x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar24_fixed {
  function f(uint) public payable {}
}

pragma solidity ^0.8.0;
contract SemanticSimilar25 {
  function f(uint) public payable returns (uint) {
    x;
    uint x;
    if (false) {
      uint x;
      x;
    }
    return x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar28 {
  function f() public pure {}
}

pragma solidity ^0.8.0;
contract SemanticSimilar31 {
  function f(uint) public pure {}
}
contract SemanticSimilar34_fixed {
  function f(uint) public pure returns (uint) {
    uint x;
    if (false) {
      return x;
    }
    return x;
  }
}
contract SemanticSimilar36 {
  function f(uint) public pure returns (uint) {
    uint x;
    y;
    x;
    x x x x;
    x;
    return x;
  }
}
contract SemanticSimilar37 {
  function f() public pure returns (uint) {
    uint x;
    uint y;
    return x;
  }
}
contract SemanticSimilar38 {
  function f() public pure returns (uint) {
    uint x;
    uint y;
    return x;
  }
}
contract SemanticSimilar40 {
  function f(uint) public pure returns (uint) {
    uint x;
    uint y;
    return x;
  }
}
