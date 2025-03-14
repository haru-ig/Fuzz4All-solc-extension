pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations19_rewritten7{
    constructor() public {
        uint x = 0;
        uint x2;
        uint x3;
        uint x4;
        uint x5;
        uint x6;
        x6 = 999;
        x5 = 122;
        x4 = (x5 + x6) + x;
        x = 10;
        x2 = (x4 < x)? 10 : 1;
        x3 = x < 1? 0 : 1;
        x = 9;
        x4 = (x6 < x) - x;
        x5 = 9;
        x2 = x < x? x2 : 2;
        uint x7 = 9999;
        x = 8;
        x5 = x7 * x;
        uint x8 = x & x7;
        x5 = x8 + x5;
        x5 = x5 - 9;
        x5 = x5 & (9 < 9);
        x = 8;
        x4 = (x & x6) - x;
    }
}
