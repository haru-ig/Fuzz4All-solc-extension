pragma solidity ^0.8.0;
struct SemanticSimilar {
    uint256 a;
    uint256 b;
    uint256 c;
}
contract SemanticSimilar2 is SemanticSimilar3{
  SemanticSimilar storage v = SemanticSimilar(0, 1, 2);
}

pragma solidity ^0.8.0;
struct SemanticSimilar {
    uint256 a;
    uint256 b;
    uint256 c;
}
contract SemanticSimilar {
  semanticSimilar2 semanticSimilar2;
}
contract SemanticSimilar2 is SemanticSimilar3{
}


pragma solidity ^0.8.0;
contract SemanticSimilar3 {
  semanticSimilar2 semanticSimilar2;
}
contract SemanticSimilar2 is SemanticSimilar3{

}

contract SemanticSimilar {
    uint256 a;
    uint256 b;
    uint256 c;
  }



  contract SemanticSimilarity2 is SemanticSimilar3{
  }


contract SemanticSimilarity {
}
