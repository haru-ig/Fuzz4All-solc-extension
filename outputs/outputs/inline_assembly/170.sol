pragma solidity ^0.8.0;
contract E6H {
    uint16 x = 0xabcd;
    function f() public {
        uint8 x;
        x = x << 8 >> 8;
        uint8[10] x;
        uint8 y;
        (x,  y) = ((x << 32 >> 32), (x << 8 >> 8));
    }
}
