pragma solidity ^0.8.0;
contract CallerExample16 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        x = x;
        z = y;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        x = 0;
        z = y;
    }
}
