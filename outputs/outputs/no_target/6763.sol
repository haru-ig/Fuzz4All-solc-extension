pragma solidity ^0.8.0;
contract TestMutated4 {
    function add(uint x, uint256 y) public pure returns (uint256) {
        return x + y - 3;
    }
    function add2(uint x, uint256 y) public pure returns (uint32) {
        return x + y - 4;
    }
}
