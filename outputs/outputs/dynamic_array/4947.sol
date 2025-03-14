pragma solidity ^0.8.0;
contract Test67d {
    struct State {
        uint flag;
        uint flag2;
    }
    uint flag;
    uint flag2;
    uint x;
    uint y;
    constructor() public {
        x;
        y;
        State memory s;
        s.flag;
        s.flag2;
    }
    function foo() public {
        x;
        y;
        State memory s;
        s.flag;
        s.flag2;
        s.flag;
    }
}
