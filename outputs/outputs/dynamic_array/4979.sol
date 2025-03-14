pragma solidity ^0.8.0;
contract Test68d1 {
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
    constructor() public {
        x;
        y;
        z;
        State memory s;
        s.flagx;
    }
    function bar() public {
        x;
        y;
        z;
        State memory s;
        s.flagx;
        s.flag2;
    }
}
