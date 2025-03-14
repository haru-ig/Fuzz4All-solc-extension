pragma solidity ^0.8.0;
contract SemanticSimilar3{
  function f1() public  {}

  modifier g(uint256 x) {
    v += x;
    _;
  }

  function f2() public g(1) {
    v = 10;
  }
}
contract SemanticSimilar2{
  function f() public {v = 5;}

  function g(uint256 x) public g(v + x) {
    v = 10;
  }
}
contract SemanticSimilar1 is SemanticSimilar1{
  function f() public {v = 5;}

  function g(uint256 x) public g(v + x) {
    v = 10;
  }
}
contract SemanticSimilar {
  uint256[5] v;
  function f() public {
    require(v[1] >= address(this));
    v[1] = v[1] + v[2];
    v[0] = v[2];
  }
}
