pragma solidity ^0.8.0;
contract C6 {
    constructor(uint256 x) {}
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        b = 0;
        return a + b;
    }
}
