pragma solidity ^0.8.0;
contract CallerExample21 {
    uint constant ZERO_ADDR = 0x00;

    function subtract(uint x, uint y) public pure returns (uint z) {
        if (x == ZERO_ADDR) {
            if (y == ZERO_ADDR) {
                return 0;
            } else {
                return y;
            }
        } else {
            if (y == ZERO_ADDR) {
                return x;
            } else {
                return x.sub(y);
            }
        }
    }
}
