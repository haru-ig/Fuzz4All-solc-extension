pragma solidity ^0.8.0;
struct SemanticSimilar5{
  uint256 numerator;
  uint256 denominator;
}
contract SemanticSimilar4{
  SemanticSimilar5 v;
}





contract SemanticSimilar6{
  function SemanticSimilar6(uint256 a, uint256 b) public{


    x = a % b;
  }
  uint256 x;
}

contract SemanticSimilar {
  uint256 public constant a = 10**20;
  uint256 public constant numerator = a / 10;
  uint256 public constant denominator = 10;
  fallback () public payable{
    if (msg.value > denominator || msg.value < numerator){
      throw;
    }
  }
}
