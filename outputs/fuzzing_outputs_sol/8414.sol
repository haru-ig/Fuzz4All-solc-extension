pragma solidity ^0.8.0;
contract SemanticSimilar589 {
  uint256 a;
  bytes32 b;
  bytes32 c;
  constructor (bytes32 _a, bytes32 _b) public {
    a = 1;
    b = _b;
  }
  fallback () external payable { }
  function () external payable {}
}
contract SemanticSimilar613 {
  bytes32 a;
  constructor () public {
    a = sha256('hello');
  }
  fallback () external payable { }
}
contract SemanticSimilar633 {
  bytes32 a;
  uint256 b;
  uint u;
  constructor (uint256 _b, uint _u) public {
    a = sha256(_b);
    b = _u;
    u = _u;
  }
  fallback () external payable { }
}
contract SemanticSimilar653 {
  bytes32 a;
  constructor () public {
    a = sha256('foobar');
  }
  fallback () external payable {
    a = sha256(a);
  }
}
contract SemanticSimilar673 {
  bytes32 a;
  constructor () public {
    a = sha256('foobar');
  }
  fallback () external payable { a = ('foo'.length() > 1)? a : sha256(a) }
}
contract SemanticSimilar687 {
  bytes32 a;
  constructor () public {
    a = sha256('foobar');
  }
  fallback () external payable { }
  function () external payable {}
}
