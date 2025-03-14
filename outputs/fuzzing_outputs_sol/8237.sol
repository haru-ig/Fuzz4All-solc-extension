pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  struct S {
    bool f;
    uint x;
  }
  bool f;
  S x;
  function f() public {
    x.f = false;
    x.x = 2;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar12 {
  function f() public default {

  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar13 {
}

pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  address payable p;
  function f() public {
    p.transfer(msg.value);
  }
}
