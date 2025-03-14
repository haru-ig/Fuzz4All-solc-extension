pragma solidity ^0.8.0;
library RestrictedMutator {
    modifier restricted {
        a1 = a0;
        a0 = address(0x01);
        s = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
        _;
    }
    function f(address a) public restricted {
        uint s = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
        a *= 33;
    }
}
