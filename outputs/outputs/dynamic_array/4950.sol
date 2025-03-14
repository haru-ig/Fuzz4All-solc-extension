pragma solidity ^0.8.0;
contract Test67e {
    struct State {
        uint flag;
        uint flag2;
    }
    uint flag;
    uint flag2;
    uint x1;
    uint x2;
    uint y1;
    uint y2;
    constructor() public {
        x1;
        y1;
        State memory s;
        s.flag;
        s.flag2;
    }
    function foo() public {
        x1;
        y1;
        State memory s;
        s.flag;
        s.flag2;
        x1;
        y1;
        State memory s1;
        s1.flag;
        s1.flag2;
        x1;
        y1;
        State memory s2;
        s2.flag;
        s2.flag2;
        x2;
        y2;
        State memory s3;
        s3.flag;
        s3.flag2;
    }
}
