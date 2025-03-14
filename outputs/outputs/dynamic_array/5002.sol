pragma solidity ^0.8.0;
contract Test92e7 {
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
    function bar() public view {
        State storage s = State(flag);
        a;
        b;
        c;
    }
}
