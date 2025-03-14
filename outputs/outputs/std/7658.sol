pragma solidity ^0.8.0;
contract AddSubtract {
    function add(uint x, uint y) public pure returns (uint z) {
        return x + y;
    }
    function subtract(uint x, uint y) public pure returns (uint z) {
        return x - y;
    }
}
