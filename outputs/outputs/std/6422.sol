pragma solidity ^0.8.0;
contract Array {

function min(uint256 x, uint256 y) public pure returns (uint256) {
    return x < y? x : y;
  }
}
contract Multiply {

function mul(uint256 x, uint256 y) public pure returns (uint256 z) {
    unchecked {

      assembly { z := x * y }
    }
  }
}
