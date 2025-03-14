pragma solidity ^0.8.0;
contract Emulator7 {
    uint x; uint y;
    function init() public {
        y = x+x;
        uint z = x-y;
        uint w = x*y;
        uint v = x^y;
        uint u = x/y;
        uint s = u/v;
        uint f = uint(fmod(s,290000)); s = uint(f/2900);
        s = s+mod(s,2900);
        s = s*2900;
        x = s;
        u = w/2;
        u = y-u*2;
        if (u >= u/(y-1)) return u;
        if (u >= u/(y-
