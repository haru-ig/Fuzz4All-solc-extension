pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations18{
    uint[5] x;
    uint[3] y;
    constructor() public {
        x[2] = 3;
    }
    function f() public {
        uint[5] storage xx;
        uint[3] storage yy;
        uint[3] storage yy2;
        uint[3] storage zz;
        xx = x;
        xx[3] = 5;
        yy = y;
        yy1[2] = yy1[2];
        yy2 = yy2;
        yy2[2] = yy2[3];

        uint y0;
        uint y1 = yy[2];
        uint y2 = yy2;
        y0 = yy1;
        y1 = yy1[2];
        y2 = yy1[2];
        yy2 = yy21[3];
        yy[2] = yy[2];
        yy[2] = yy[2];
    }
    function g() public {
        uint[3] storage xy;
        xy = xy2;
        yy[2] = yy[2];
    }
}
