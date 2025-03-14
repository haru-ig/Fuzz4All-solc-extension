pragma solidity ^0.8.0;
contract CallerExample15 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        x = x;
    }
}
