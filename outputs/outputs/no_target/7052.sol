pragma solidity ^0.8.0;
contract Test {
    function change() public {
        uint x;
        if (x >= 0) x = x << 2;
        if (x <= 0) x = ~x >> 1;
        while (x >= 0) {
            x >>= 1;
            if (x >= 0) {
                x >>= 2;
                if (x < 0) x ^= 2;
            }
        }
        x = x >> 1;
    }
}
