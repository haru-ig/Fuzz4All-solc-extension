pragma solidity ^0.8.0;
 contract P {
    function f(uint256 i) public {
        uint256 s = 0; do unchecked { s ^= i; } while(uint256(uint8(0)) + 1 < i); }
    }
}
