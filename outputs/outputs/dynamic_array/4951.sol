pragma solidity ^0.8.0;
contract Test68d {
    struct State {
        uint flag;
        uint flag2;
    }
    uint[50000000] y;
    uint flag;
    uint flag2;
    constructor() public {
        flag;
        flag2;
        State memory s;
        s.flag;
        s.flag2;
        s.flag;
    }
    function foo() public {
        flag;
        flag2;
        State memory s;
        s.flag;
        s.flag2;
        s.flag;
        s.flag2;
    }
}
