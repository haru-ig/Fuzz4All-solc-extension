pragma solidity ^0.8.0;
contract P7{
  uint256 internal x;

  function h() internal returns (uint256) {
    x += 1;
    return x;
  }
}
