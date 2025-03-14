pragma solidity ^0.8.0;
contract UnrestrictedMutator
{
    uint x;
    uint y;
    constructor () public {
        x = 5;
        unchecked {
            y = unchecked(-200000000000000000000000000000000000000000000000000000000000000);
        }
        unchecked {
            y *= 10;
        }
        x *= y;
    }
}
contract UnrestrictedMutator2 {
    uint x;
    uint y;
    constructor () public {
        x = 5;
        y = 7;
        y *= 10;
        x *= y;
    }
}
contract LegacyMutator2 {
    uint x;
    uint y;
    constructor () public {
        x = 7;
        uint overflow = 200000000000000000000000000000000000000000000000000000000000;
        unchecked {
            y = unchecked((-802300800000000000000000000000000000000000000000000000000000000));
        }
        unchecked {
            y = overflow * y;
        }
        x *= y;
    }
}
