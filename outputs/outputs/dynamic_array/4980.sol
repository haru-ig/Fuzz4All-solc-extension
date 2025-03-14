pragma solidity ^0.8.0;
contract Test68d2 {
    struct State {
        uint flagx;
        uint flag2;
        uint flag3;
    }
    uint flagx;
    uint flag2;
    uint flag3;
    uint x;
    uint y;
    uint z;
    State memory s;
    constructor() public {
        s;
        s.flagx;
        s.flag2;
        s.flag3;
        x;
        y;
        z;
    }
    function bar() public {
        s.flagx;
        s.flag2;
        s.flag3;
        x;
        y;
        State memory s;
    }
}
