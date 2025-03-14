pragma solidity ^0.8.0;
contract MutatedExample {
  function mod(uint8 y) public pure returns(uint8) {
    y = 5;
    return uint8(uint256(y) + X);
  }
  function mod2(uint256 y) public pure returns(uint256) {
    y = X + TWO;
    return X;
  }
}
