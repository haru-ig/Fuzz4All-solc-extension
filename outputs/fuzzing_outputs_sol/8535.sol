pragma solidity ^0.8.0;
contract CallerExample16 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x + x;
    }
}
