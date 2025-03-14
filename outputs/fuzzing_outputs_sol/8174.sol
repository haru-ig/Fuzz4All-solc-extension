pragma solidity ^0.8.0;
contract SemanticSimilar3 is SemanticSimilar4{
  uint256 v = 2;
  uint256 immutable b;
}


contract SemanticSimilar2 is SemanticSimilar3{
  uint256 immutable c;
}


contract SemanticSimilar1 is SemanticSimilar2{
  uint256 b;
}

pragma solidity ^0.8.0;
contract SemanticSimilar{
  uint256 immutable a;
}


pragma solidity ^0.8.0;
contract SemanticSimilar10 is SemanticSimilar1, SemanticSimilar{
  uint256 v = 2;
  SemanticSimilar10() internal {}
  uint0256 a;
}
