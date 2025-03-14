pragma solidity ^0.8.0;

contract SemanticSimilar080 {
  function () external payable {}

  fallback() external payable {}

  receive() external payable {}
}
contract SemanticSimilar081 {
  uint b;
  uint z;
  uint j;
  function f() public payable {
    uint x;
    x; x; x; z; x; x; x; x; x; x; x; x; x; x; x; x;
    x; x; x; z; j;
  }
}
contract SemanticSimilar120 {
  uint x; uint z; uint j;
  fallback f() external payable {}

  function () public payable {}
}
contract SemanticSimilar121 {
  fallback f() external payable {}

  uint x; uint z; uint j;
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract SemanticSimilar160 {
  var x; var z;
  fallback f() external payable {}

  function () public payable {}

  receive() external payable {}
}

pragma solidity ^0.8.0;
contract SemanticSimilar161 {
  var x; var z;



}
