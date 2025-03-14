pragma solidity ^0.8.0;
library K {
    function s(uint x) pure public returns (uint256 res) {
        return 32768+x;
    }
}
