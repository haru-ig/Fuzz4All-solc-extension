pragma solidity ^0.8.0;
library TestMutated21 {
    function add(uint x, uint) public pure returns (uint) {
        require (x < 42, "_");
        return x;
    }
}
