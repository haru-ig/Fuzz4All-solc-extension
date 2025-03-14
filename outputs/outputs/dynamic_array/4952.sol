pragma solidity ^0.8.0;
contract Test67e {
    struct State {
        uint flag1;
        uint flag2;
    }
    uint x;
    uint y;
    constructor() public {
        x;
        y;
        State memory s;
        s.flag1;
        s.flag2;
        s.flag1;
        s.flag2;
    }
    function foo() public {
        x;
        y;
        State memory s;
        s.flag1;
        s.flag2;
        s.flag1;
        s.flag2;
    }
}
