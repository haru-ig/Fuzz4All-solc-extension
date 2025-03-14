pragma solidity ^0.8.0;
contract Multiprecision {
    constructor () {
    }

    function multiplyMultiprecision(uint256 a, uint256 b) returns (uint256) {
      uint256 z = (uint256(a) * uint256(b)) % uint256(two);
      return z;
    }
}
