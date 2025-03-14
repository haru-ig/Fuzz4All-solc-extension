pragma solidity ^0.8.0;
contract SemanticSimilar9 {
  bool f1;
  function f() public returns (uint) {

    f1 = false;
    f = 1;
    return 0;
  }
}
contract SemanticSimilar9Mutated{
  bool f1;
  function f() public bool {f1 = true; bool ret; ret = true;}
  bool f;
}

pragma solidity ^0.8.0;
contract SemanticSimilar9 {
  bool f1;
  function f() public returns (uint) {



    f = 1;
    return 0;
  }
}
