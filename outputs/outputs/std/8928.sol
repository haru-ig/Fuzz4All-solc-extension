pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint8 a;
    uint8 b;
    uint16 c;
    uint16 d;
    uint16 e;
    uint256 f;
    uint256 g;
    uint256 h;
    uint128 i;
    constructor(uint8 a_, uint8 b_, uint16 c_, uint16 d_, uint16 e_, uint256 f_, uint256 g_, uint256 h_, uint128 i_) {
        a <<= 2;
        b <<= 1;
        c >>= 2;
        d >>= 3;
        e >>= 5;
        f >>= 7;
        g >>= 11;
        h >>= 13;
        i >>= 17;
        a <<= 9;
        b <<= 7;
        c <<= 4;
        d <<= 1;
        e <<= 1;
    }
}
