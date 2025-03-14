pragma solidity ^0.8.0;
contract Semantic0031 {
    function x() public pure {
        uint x = 1;
        if (x > 2679) {
            x += 33671878827277777888888717814799;
        }
        if (true) {
            uint a = 5;
        }
        if (true) {
            byte a;
        }
        int b = -1;
        if (false || b > -2) {
            b = a >>> 5;
            b = a >> 11;
        }
    }
}
