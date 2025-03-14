pragma solidity ^0.8.0;
contract CallerExample13 {
    function subtractAndAdd(uint x, uint y) public pure returns (uint z) {
        z = subtract(x, y);
        z += x;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        z = subtract(x, y);
    }
}
