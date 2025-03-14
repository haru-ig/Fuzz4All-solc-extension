pragma solidity ^0.8.0;
contract Convert {


  require (address(0)!= sender());

  function toWei(uint256 x) internal pure returns (uint256) {
    return x * 1 ether;
  }

  function fromWei(uint256 x) internal
