pragma solidity ^0.8.0;
library TestMutated20 {
    function add(uint x, uint) public pure returns (uint) {
        require (x > 0, "_");
        return 5 + x / 2;
    }
    function add2(uint x, uint y) public pure returns (uint) {
        require (x > y, "_");
        return 5 + x / 2 - y;
    }
}
