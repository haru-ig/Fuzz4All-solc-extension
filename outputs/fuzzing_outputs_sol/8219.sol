pragma solidity ^0.8.0;
contract SemanticSimilar10{
  function f() public returns ((bool, uint), uint) { return (false, 0); }
}

pragma solidity ^0.8.0;
contract SemanticSimilar11{
  bool f1;
  function f1() public { f1 = true; }
}

contract SemanticSimilar12 is
    SemanticSimilar9,
    SemanticSimilar10,
    SemanticSimilar11
    {
    function f() public returns (uint) {return 0;}
  }
