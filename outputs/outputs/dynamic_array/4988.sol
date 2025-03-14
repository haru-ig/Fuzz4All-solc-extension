pragma solidity ^0.8.0;
contract Test68d2 {
    struct State {
        uint flag;
        uint flag2;
        uint flag3;
    }
    uint flag;
    uint flag2;
    uint flag3;
    uint a;
    uint b;
    uint c;
    memory s;
    constructor() public {
        a;
        b;
        c;
        s.flag;
        s.flag2;
        s.flag3;
    }
    function bar() public {
        a;
        b;
        c;
        s.flag;
        s.flag2;
        s.flag3;
    }
}
