pragma solidity ^0.8.0;
contract HelloWorld {
  uint256 constant TWO = 2;
  uint256 constant ONE = 1;
  uint256 constant X = 16;
  function modified() private view returns(uint8) {
    return( X^X^X^X-ONE+TWO );
  }
  uint256 constant Y = 17;
  function modified2() private view returns(uint256) {
    return Y + Y + X - TWO + ONE;
  }
}
