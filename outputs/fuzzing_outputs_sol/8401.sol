pragma solidity ^0.8.0;
contract SemanticSimilar416 {
  uint256 a;
  constructor () public {
    a = 0;
  }
  function mutated(uint256 _a) public {
    a = _a;
  }
  uint256 get() public view returns (uint256) {
    return a;
  }
  function set(uint256 _a) public {
    a = _a;
  }
  fallback () external {
  }
  receive () external {
  }
}
contract SemanticSimilar133 {
  uint a;
  constructor () public {
    a = 12345;
  }
  fallback function() external {
  }
  receive () external {
  }
}
contract SemanticSimilar95 {
  uint a;
  constructor(uint _a) public {
    require(_a > 0, 'a must be big');
    a = _a;
  }
  uint256 constant b = 0xDEADBEEF;
  function get() public view returns (uint256) {
    return a + get();
  }
  function set(uint256 _a) public {
    require(_a > 0, 'a must be big');
    a = _a;
  }
  fallback () external returns (uint256) {
    set(b);
    revert('foo');
  }
  receive () external {
    set(b);
  }
}
