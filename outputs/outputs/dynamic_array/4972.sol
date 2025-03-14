pragma solidity ^0.8.0;
contract Test68e {
    struct State { uint flag; uint flag2; uint flag3; }
    State memory s;
    State memory s2;
    uint x;
    uint y;
    uint z;
    uint x2;
    uint y2;
    uint z2;
    constructor() public {
        s.flag;
        s.flag2;
        s.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        x;
        y;
        z;
        s2.flag;
        s2.flag2;
        s2.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        x2;
        y2;
        z2;
    }
    function bar() public {
        s.flag;
        s.flag2;
        s.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        x2;
        y2;
        z2;
        s.flag;
        s.flag2;
        s.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
        s2.flag;
        s2.flag2;
        s2.flag3;
    }
}
