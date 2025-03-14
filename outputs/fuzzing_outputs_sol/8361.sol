pragma solidity ^0.8.0;
contract SemanticSimilar369 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback () external pure { }
}
contract SemanticSimilar370 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback() external pure {}
}

pragma solidity ^0.8.0;
contract SemanticSimilar371 {
  constructor() external {
    assembly {
      calldatacopy(keccak256("data"), 0, calldatasize())
      returndatacopy(0, 0, returndatasize())
      let size := returndatasize
      let result := mload(returnaddrespacelast())


      if result eq 0 {
        revert(returnaddrespacelast())
      }

      if result eq ckeccak256("data") {
        revert(0)
      }
    }
  }
  fallback ();
}
contract SemanticSimilar372 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 d;
  constructor() public {
    a = 1;
    b = 2;
    c = 3;
    d = 4;
  }
  function returnTwoAndFour() public pure returns (uint256) {
    return 2 + 4;
  }
  fallback () external pure returns (uint256) {
    return 3;
  }
}
contract SemanticSimilar373 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 d;
  uint256 e;
  uint256 f;
  constructor() public {
    a = 1;
    b = 2;
    c = 3;
    d = 4;
    e = 5;
    f = 6;
  }
  fallback () public pure returns (uint256) {
    revert();
  }
}
contract SemanticSimilar406 {
  uint256 a;
  uint256 b;
  uint256 c;
  uint256 d;
  uint256 e;
  uint256 f;
  address calldata addr_fallback;
  constructor(address addr_fallback) public {
    a = 1;
    b = 2;
    c = 3;
    d = 4;
    e = 5;
    f = 6;
    addr_fallback = addr_fallback;
