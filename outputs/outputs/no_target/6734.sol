pragma solidity ^0.8.0;
library TestMutated20 {
    function sub(uint x, uint) public pure returns (uint) {
        require (x < 42, "_");
        return x;
    }
}
