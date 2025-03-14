pragma solidity ^0.8.0;

contract MyLib {
    uint constant X = uint(0x555...);

    uint constant Y = uint(10**16...);

    uint constant X_ZERO = ~uint(0);

    function isTrue() view public returns (uint) {
        if (!MyLib.isTrue(bool(X))) return (X? 2 : 0);
        if (X_ZERO >= Y) return (3);
        return (X_ZERO >> 2) | 6;
    }
}
