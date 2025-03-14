pragma solidity ^0.8.0;
library Lib {
    function addAndSub(uint a, uint b) public pure returns (uint) {
        return a + (b * 2 - 1);
    }
}
