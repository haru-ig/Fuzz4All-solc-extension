pragma solidity ^0.8.0;
contract SemanticSimilar2{
  uint256 a;
  uint256 b;
  uint256 c;
}
contract SemanticSimilar3 is SemanticSimilar2{
  function getB() public view returns(uint256){
    uint256 x=1337;
    return x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar1{
  function getB() public view( SemanticSimilar2 memory memory) returns(uint256){
    uint256 x=1337;
    return x;
  }
  function getV(SemanticSimilar3 memory memParam) public view returns(uint256){
    uint256 x=1337;
    return x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar1 {

  uint256 public a;

  uint256 public b;
  function getV(SemanticSimilar2 memory input) public view returns(uint256){
    uint256 x=input.a;
    return x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar1 is SemanticSimilar2 with SemanticSimilar3 {
  function getB() public view returns(uint256){
    uint256 x=b;
    return x;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar1 is SemanticSimilar2 {
  mapping(uint256 => (uint256)) public a;
  function getV(SemanticSimilar2 memory input) public view returns(uint256){
    uint256 x=a[input.a];
    return x;
  }
}

pragma solidity ^0.8.0;
interface SemanticSimilar2 {
  uint256 getB() public view returns(uint256);
}
