pragma solidity ^0.8.0;
contract SemanticSimilar5{
  function f() public {v = 5;}
  modifier m { v = 23; _; }
}
pragma solidity ^0.8.0;
contract SemanticSimilar6{
  function f() public {
    v = 23;
    _;
  }
}
