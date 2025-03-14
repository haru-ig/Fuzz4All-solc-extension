pragma solidity ^0.8.0;
contract SemanticSimilar51 {
  uint256 a;
  constructor () public {
    a = 0;
  }
  function getA() public returns (uint128) {
    return 5;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    uint32 b = a++;
  }
}
contract SemanticSimilar55 {
  bytes32 b;
  constructor () public {
    b = 0xCCDDEEFF;
  }
  fallback () external {
  }
  receive () external {
  }
}
contract SemanticSimilar59 {
  bytes32 b;
  constructor () public {
    b = 0xCCDDEEFF;
  }
  fallback A {
    receive {

    }
    function () {
    }
  }
  struct A {
    receive () external payable {

    }
    function () {
    }
  }
}
