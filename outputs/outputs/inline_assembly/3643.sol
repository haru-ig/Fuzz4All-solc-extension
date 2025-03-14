pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  function foo() public returns (uint) {
    return 1;
  }
  constructor() {
    g = 1;
    g = 2;
    g = 3;
    a = address(this);
    d = address(this);
  }
}

pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  uint _g;
  uint _r;
  uint _a;
  uint _d;
  uint _b;
  address _a_address;
  uint _g2;
  uint _r2;
  uint _a2;
  uint _d2;
  uint _b2;
  address _a2_address;
  constructor() {
    r = 1;
    a = e;
    d = a_address;
    b = a;
    a_address = a;
    g = 2;
    g = 1;
    g = 2;
    a2 = address(this);
    d2 = address(this);
  }
}

pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  uint _r;
  uint _a;
  uint _d;
  uint _b;
  address _a_address;
  uint _g;
  uint _r2;
  uint _a2;
  uint _d2;
  uint _b2;
  address _a2_address;
  constructor() {
    r = 1;
    a = address(this);
    d = a_address;
    b = a;
    a_address = a;
    g = 2;
    g = 2;
    g = 1;
    a2 = address(this);
    d2 = address(this);
  }
}

pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  uint _r;
  uint _a;
  address _d;
  address _b;
  address _a_address;
