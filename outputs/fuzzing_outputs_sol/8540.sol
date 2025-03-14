pragma solidity ^0.8.0;
contract CallerExample16 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        if (x < y) {
            z = y;
        } else {
            z = x;
        }
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        if (x < y) {
            x = 0;
            z = y;
        } else {
            z = x;
        }
    }
}
