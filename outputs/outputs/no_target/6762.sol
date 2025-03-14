pragma solidity ^0.8.0;
contract TestMutated4 {
    function add(uint x, uint256 y) public pure returns (uint) {
        uint32 z = x + (uint32)(y);
        uint128 w = y * 100;
        return z + uint(w / 100);
    }
}
