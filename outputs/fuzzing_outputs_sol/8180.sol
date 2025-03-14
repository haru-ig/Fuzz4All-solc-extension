pragma solidity ^0.8.0;
contract SemanticSimilar5{
  uint256 v;
  function f() public {emit change(v);}
  event change(uint256);
}
pragma solidity 0.8.6;
contract SemanticSimilar6{
  uint256 v;
  function f() public {v = 5;}
}
pragma solidity 0.8.6;
contract SemanticSimilar7{
  uint256 v;
  function f() public {v = 5;}
  event change(uint256);
}
