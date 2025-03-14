pragma solidity ^0.8.0;
library loud {
    function test(uint a) internal view returns (bool b) {
        return a < 40;
    }
}
contract c {
    uint a;
    uint8 b;
    function f() public pure returns (uint8 c) {
        if (loud.test(0)) {
            if (loud.test(1)) {
                if (loud.test(2)) {
                    if (loud.test(3)) {
                        b = 4;
                    }
                }
            }
        }
        c = b;
    }
}
