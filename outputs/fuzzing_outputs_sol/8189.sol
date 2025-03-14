pragma solidity ^0.8.0;
contract SemanticSimilar5 {
  function f() public { v = 1 ;}
  function g() public {
    if(v == 1){ v = 3;}
    if(v == 1){ v = 5;}
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar6 {
  function f() public payable { v = 1  ;}
  function g() public payable {
    if(v == 1){ v = 2;}
    if(v == 1){ v = 3;}
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar7 {
  function f() public {v = 1  ;}
  function g() public {
    if(v == 1){ v = 2;}
    if(v == 1){ v = 3;}
  }
}
