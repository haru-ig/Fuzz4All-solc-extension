pragma solidity ^0.8.0;
contract MutatedMath {
    uint256 public value;
    function sqrt(uint256 x) public pure returns (uint256) {
        return x;
    }
    function mod(uint256 x, uint256 y) public pure returns(uint256) {
        return x % y;
    }
}
