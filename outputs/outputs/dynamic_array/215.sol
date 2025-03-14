pragma solidity ^0.8.0;
contract C6 {
    constructor(uint256 x) {}
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    function add2(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    function add(C6 c6, C6 c7) public pure returns (uint256) {
        return c6.add2(c7.add(a, b));
    }
    function add2(C6 c6, C6 c7) public pure returns (uint256) {
        return c6.add2(c7.add(a, b));
    }
}
