pragma solidity ^0.8.0;
contract HelloWorld {
  uint8 constant X = 16;
  function modified() private view returns(uint8) {
    return uint8(uint256(X) + 1);
  }
  uint256 constant TWO = 2;
  function modified2() private view returns(uint256) {
    return X + TWO;
  }
}
