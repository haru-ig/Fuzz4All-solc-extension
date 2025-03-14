pragma solidity ^0.8.0;
contract ModByTwos {
  uint256 constant X = 16;
  function mod2(uint256 y) private returns(uint256) {
    require(y > 0);
    if(uint256(TWO) >= X && uint256(TWO) >= X + uint256(y)) {
      return TWO + X;
    }
    else {
      return TWO + X - uint256(TWO) - X + mod(uint256(TWO) - uint256(y));
    }
  }
}
