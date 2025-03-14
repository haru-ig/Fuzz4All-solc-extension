pragma solidity ^0.8.0;
contract SemanticSimilar407 {
  uint8 a;
  function add() public { }
  fallback () external payable { }
  function set() public {
    a++;
  }
  receive () external {
    a++;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar110 {
  uint8 a;
  uint8 public data;

  function modify() public {
    a = 8;
  }
  function add() public {
    a = 3;
  }
  fallback () external payable { }
  receive () external {
    data++;
    a = 2;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar299 {
  uint8 a;

  function modify() public {
    a++;
  }
  function add(uint8 value) public {
    a = 8 + value;
  }
  fallback () external payable { }
}

pragma solidity ^0.8.0;
contract SemanticSimilar256 {
  uint256 a;

  function modify() public {
    a++;
  }
  function add(uint256 value) public {
    a = 8 + value;
  }
  fallback () external payable { }
}

pragma solidity ^0.8.0;
contract SemanticSimilar6 {
  uint8 a;
  uint8 public constant DEFAULT_VALUE = 8;

  function add() public {
    a = DEFAULT_VALUE;
  }
  function get() public view returns (uint8) {
    return a;
  }
  fallback () public {
    a++;
  }
}

pragma solidity ^0.8.0;
