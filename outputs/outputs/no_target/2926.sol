pragma solidity ^0.8.0;
contract third {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    constructor() public {
        a = 0x3030404030000000;
        b = b % 0x1FFFFFFFFFFFFFFF00000;
        c = 0x0FFFFFFFFFFFFFFFFFFF000000000000;
        d = b % a;
        e = 0xFF00000000000000000000000000000000000000000000000000000000000C0;
        f = 0x1000;
    }
}

pragma solidity ^0.8.0;
contract fourth {

    constructor() public{
        d = 0x7FFFFFFFFFFFFFFF0000000;
        e = 0x7FFFFFFFFFFFFFFF00000000000000000000000000;
        e2 = 0x0000000000000000000000000000000000000000000000000000000000000F;
    }
    uint8 x;
    uint16 y;
    uint26 z;
    uint32 a;
    uint40 b;
    uint48 c;
    uint64 d;
    uint72 e;
    uint80 f;
    uint160 g;
    uint320 h;
    uint640 i;
    uint96 j;
    uint132 k;
    uint164 l;
    uint328 m;


    function x() public pure {
        x = 0xA1;
    }
    function y() public pure {
        y = 0x0AA1;
    }
    function z() public pure {
        z = 0x1FFF8080D834555555555555555555555555555555555555555555555555;
    }
    function a() public pure {
       a = 0xffe99b77de9dd8f5735967938530
