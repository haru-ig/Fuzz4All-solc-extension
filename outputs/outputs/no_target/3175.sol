pragma solidity ^0.8.0;
contract eight {
    uint r;
    address a;
    function __func__() public {
        uint x = 10;
        uint y = r = x + (x + 1) - a;
        r = (x + y) & ~r;
        r = (~x & a) | (r + 1) & (r ^ y);
    }
}
