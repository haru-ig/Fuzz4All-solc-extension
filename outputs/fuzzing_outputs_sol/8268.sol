pragma solidity ^0.8.0;
interface IReturnVoid {
  function f() external view returns (uint data);
}
contract SemanticSimilar15 is IReturnVoid {
  uint public x;
  function f() public {
    uint a = x;
    uint c = a;
    x = c / c;
  }
}
contract SemanticSimilar16 is IReturnVoid {
  uint public x;
  uint public y;
  constructor(uint x_) {
    x = x_;
    y = x_;
  }
  function f() public {
    uint d = 100;
    uint c = x;
    if (d < c) {
      x = c;
      y = c;
      return;
    } else {
      x = d;
      y = d;
    }
  }
}
contract SemanticSimilar17 {
  string x;
  string x_;
  string y;
  string y_;
  function f() public {
    string z = x;
    x_ = y;
    y_ = z;
  }
}
