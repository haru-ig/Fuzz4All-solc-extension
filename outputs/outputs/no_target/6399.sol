pragma solidity ^0.8.0;
contract nonMutatedC {
  function f(uint8 a) public returns (uint256) {
    uint256 res;
    if( a % 2 == 0 ) {
      res = 2 % 2 | 2;
    } else {
      res = a;
    }
    return res;
  }
}
contract c {
  function f(uint8) public pure returns (uint256) {
    return 0xff;
  }
}
contract c2 {
  function f(uint8) public pure returns (uint256) {
    return a;
  }
}
