pragma solidity ^0.8.0;
contract CallerExample19 {
    function subtract(uint x, uint y) public pure {
        x -= 15;
        y -= 3;
    }
}
contract CallerExample20 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        if (y > x) {
            z = x;
        } else {
            z = y;
        }
    }
}
