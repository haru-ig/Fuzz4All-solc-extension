pragma solidity ^0.8.0;
contract SemanticSimilar385_mod3 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 2;
  }
  fallback () external {
    uint256 a2 = a;
    a = a + 1;
  }
}
contract SemanticSimilar4 {
  uint256 public a;

  fallback () external payable {
    address payable addr;
    uint256 amount;
    (addr, amount) = tx.origin;
    uint256 b = a;
    if(amount < b){
      a = amount + 1;
    }
  }
}
contract SemanticSimilar5 {
  uint256 public a;

  fallback() external {
    msg.sender.sendValue(msg.value / 2);
  }
}
contract SemanticSimilar6 {
  uint256 public a;

  fallback() external payable {
    uint256 i = 0;
    uint256 z = 0;
    while (z < 10000000000000000000000000000000000000000000) {
        if (a >= 100000000000000000000000000000000000) {
          a -= 1;
          break;
        } else {
          i += 1;
          a -= 1;
          uint256 j = i + 1;
        }
      }
    }
  }
}
contract SemanticSimilar7 {
  uint256 public a;

  fallback () external {
    uint256 b = a;
    a = a + 1;
    uint256 c;
    while (b >= 100000000000000000000000000) {
      c = b;
      b = b - 1;
      a = 1 + a;
      a = 1 + a;
      a = 1 + a;
      a = 1 + a;
      a = 1 + a;
