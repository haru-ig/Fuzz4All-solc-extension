pragma solidity ^0.8.0;
contract C9 {
  function a(uint256 x) public view {
    uint256 sum;
    for (uint256 i = 0; i < 1; i++) {
      sum = x;
      for (uint256 j = 0; j < 1; j++) {
        sum = sum * x;
      }
    }
    return sum;
  }
}

pragma solidity ^0.8.0;
contract C10 {
    struct X {
      uint10 a;
      uint10 b;
    }
    constructor(uint256 n) public {
        X memory x = X(0, n);
        uint256 a = x.a;
        uint256 b = x.b;
    }
}
