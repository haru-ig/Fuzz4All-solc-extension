pragma solidity ^0.8.0;
library ContactsExample500Library {
    uint56 private x;
    uint56 private a;
    uint56 private b;
    uint56 private c;
    uint56 private d;
    uint56 private e;
    uint56 private y;
    function add() public pure returns (uint56){
        x += a;
        c += d;
        b -= a;
        x /= 0x1234b4992923;
        a *= 47;
        d += b + (b >> 0x11E);
        e += b + (523711 & (523712 & b));
        x <<= 0x11E;
        a >>= 0x11E;
        d |= ~x;
        a ^= ~(a & ~x);
        c >>= 1;
        x >>= 0xFFFFFFF7;
        c >>= 1;
        return d;
    }
}
