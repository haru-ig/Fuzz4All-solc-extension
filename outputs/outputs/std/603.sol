pragma solidity ^0.8.0;
contract ModByTwosMutated {
  uint8 constant X = 32;
  function mod2(uint256 y) public pure returns (uint256) {
    require(y > 0);
    return TWO + X + uint256(y);
  }
}

























































/*
