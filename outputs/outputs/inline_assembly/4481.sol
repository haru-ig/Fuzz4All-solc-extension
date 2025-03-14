pragma solidity ^0.8.0;
contract Emulator4 {
    uint x; uint y;
    mapping(uint => uint[]) xMap;
    function init() public {
        y = x+x;
        x = x-y;
        uint z = x-y;

        uint w;

        w = x*y;

        w = x^y;

        uint t; t = t+(x>>y); x = t;

        uint t; t = t+(x>>y);

        w = x>>t;

        t = t+(x>>y)+w; x = t;

        uint t; t = t+(x>>y)+x^w; x = t;

        uint t;

        uint u;

        t = x>>y;

    x = t+t; x =
