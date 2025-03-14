pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  bool f1;
  function f() public {
    uint k = 0;
    k++;
    k = k + 3;
    k = k / 4;
    k = k < 1? 3 : k;
    k = 0 + k;
  }
}


pragma solidity ^0.8.0;
contract SemanticSimilar12 {
  bool f1;
  function f() public {
    uint a = 1;
    if (a ^ a < a) {
      f1 = 1;
    }
  }
}
