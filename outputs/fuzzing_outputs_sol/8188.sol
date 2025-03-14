pragma solidity ^0.8.0;
contract SemanticSimilar5{
  uint256 v;
  function f() public {v = 5;}
  modifier modifier4 {v = 4;}
}

pragma solidity ^0.8.0;
contract SemanticSimilar6{
  uint256 v;
  function f() public {v = 5;}
  modifier modifier4 {revert();}
}
